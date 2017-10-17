.class public Lcom/threed/jpct/util/NVDepthConfigChooser;
.super Ljava/lang/Object;
.source "NVDepthConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private depth:I

.field private view:Landroid/opengl/GLSurfaceView;

.field private withAlpha:Z


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    .line 27
    const/16 v0, 0x18

    iput v0, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->depth:I

    .line 36
    iput-object p1, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "withAlpha"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    .line 27
    const/16 v0, 0x18

    iput v0, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->depth:I

    .line 49
    iput-object p1, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 50
    iput-boolean p2, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    .line 51
    return-void
.end method

.method private error()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "Failed to choose config!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 136
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 137
    .local v0, "val":[I
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x0

    aget p5, v0, v1

    .line 140
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 24
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    if-eqz v1, :cond_5

    const/16 v18, 0x5

    .line 57
    .local v18, "greenSize":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    if-eqz v1, :cond_6

    const/4 v15, 0x1

    .line 58
    .local v15, "alphaSize":I
    :goto_1
    const/16 v22, 0x5

    .line 59
    .local v22, "redSize":I
    const/16 v16, 0x5

    .line 62
    .local v16, "blueSize":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_2
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 72
    .local v6, "val":[I
    const/16 v14, 0x30e2

    .line 73
    .local v14, "EGL_DEPTH_ENCODING_NV":I
    const/16 v13, 0x30e3

    .line 75
    .local v13, "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    const/16 v1, 0xf

    new-array v3, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v22, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x3

    aput v18, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v16, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v15, v3, v1

    const/16 v1, 0x8

    .line 76
    const/16 v2, 0x3025

    aput v2, v3, v1

    const/16 v1, 0x9

    const/16 v2, 0x10

    aput v2, v3, v1

    const/16 v1, 0xa

    const/16 v2, 0x3040

    aput v2, v3, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v3, v1

    const/16 v1, 0xc

    const/16 v2, 0x30e2

    aput v2, v3, v1

    const/16 v1, 0xd

    const/16 v2, 0x30e3

    aput v2, v3, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 78
    .local v3, "configSpec":[I
    const/16 v21, 0x0

    .line 80
    .local v21, "numConfigs":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 81
    const/4 v1, 0x0

    aget v5, v6, v1

    .line 84
    .end local v21    # "numConfigs":I
    .local v5, "numConfigs":I
    :goto_3
    if-gtz v5, :cond_7

    .line 85
    const-string v1, "No nonlinear depth buffer config found...using default mode!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 86
    const/16 v1, 0xd

    new-array v3, v1, [I

    .end local v3    # "configSpec":[I
    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v22, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x3

    aput v18, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v16, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v15, v3, v1

    const/16 v1, 0x8

    .line 87
    const/16 v2, 0x3025

    aput v2, v3, v1

    const/16 v1, 0x9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/threed/jpct/util/NVDepthConfigChooser;->depth:I

    aput v2, v3, v1

    const/16 v1, 0xa

    const/16 v2, 0x3040

    aput v2, v3, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v3, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 89
    .restart local v3    # "configSpec":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .end local v5    # "numConfigs":I
    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "No depth buffer config for 24bit found...using 16bit !"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 91
    const/16 v1, 0xd

    new-array v3, v1, [I

    .end local v3    # "configSpec":[I
    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v22, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x3

    aput v18, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v16, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v15, v3, v1

    const/16 v1, 0x8

    .line 92
    const/16 v2, 0x3025

    aput v2, v3, v1

    const/16 v1, 0x9

    const/16 v2, 0x10

    aput v2, v3, v1

    const/16 v1, 0xa

    const/16 v2, 0x3040

    aput v2, v3, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v3, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 94
    .restart local v3    # "configSpec":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    .line 98
    :cond_0
    const/4 v1, 0x0

    aget v5, v6, v1

    .line 100
    .restart local v5    # "numConfigs":I
    if-gtz v5, :cond_1

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    .line 108
    :cond_1
    :goto_4
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v4, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 109
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    .line 113
    :cond_2
    const/16 v20, -0x1

    .line 114
    .local v20, "index":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    array-length v1, v4

    move/from16 v0, v19

    if-lt v0, v1, :cond_8

    .line 120
    :goto_6
    const/4 v1, -0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_3

    .line 121
    const-string v1, "Unable to find a matching config...using default!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 122
    const/16 v20, 0x0

    .line 124
    :cond_3
    array-length v1, v4

    if-lez v1, :cond_a

    aget-object v17, v4, v20

    .line 125
    .local v17, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_7
    if-nez v17, :cond_4

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    .line 128
    .end local v3    # "configSpec":[I
    .end local v4    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5    # "numConfigs":I
    .end local v6    # "val":[I
    .end local v13    # "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    .end local v14    # "EGL_DEPTH_ENCODING_NV":I
    .end local v17    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v19    # "i":I
    .end local v20    # "index":I
    :cond_4
    :goto_8
    return-object v17

    .line 56
    .end local v15    # "alphaSize":I
    .end local v16    # "blueSize":I
    .end local v18    # "greenSize":I
    .end local v22    # "redSize":I
    :cond_5
    const/16 v18, 0x6

    goto/16 :goto_0

    .line 57
    .restart local v18    # "greenSize":I
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 65
    .restart local v15    # "alphaSize":I
    .restart local v16    # "blueSize":I
    .restart local v22    # "redSize":I
    :catch_0
    move-exception v23

    .line 66
    .local v23, "t":Ljava/lang/Throwable;
    const-string v1, "Couldn\'t initialize OpenGL ES 2.0"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 67
    const/16 v17, 0x0

    goto :goto_8

    .line 104
    .end local v23    # "t":Ljava/lang/Throwable;
    .restart local v3    # "configSpec":[I
    .restart local v5    # "numConfigs":I
    .restart local v6    # "val":[I
    .restart local v13    # "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    .restart local v14    # "EGL_DEPTH_ENCODING_NV":I
    :cond_7
    const-string v1, "Nonlinear depth buffer enabled!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 115
    .restart local v4    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v19    # "i":I
    .restart local v20    # "index":I
    :cond_8
    aget-object v10, v4, v19

    const/16 v11, 0x3024

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v12}, Lcom/threed/jpct/util/NVDepthConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 116
    move/from16 v20, v19

    .line 117
    goto :goto_6

    .line 114
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 124
    :cond_a
    const/16 v17, 0x0

    goto :goto_7

    .line 63
    .end local v3    # "configSpec":[I
    .end local v4    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5    # "numConfigs":I
    .end local v6    # "val":[I
    .end local v13    # "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    .end local v14    # "EGL_DEPTH_ENCODING_NV":I
    .end local v19    # "i":I
    .end local v20    # "index":I
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .restart local v3    # "configSpec":[I
    .restart local v6    # "val":[I
    .restart local v13    # "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    .restart local v14    # "EGL_DEPTH_ENCODING_NV":I
    .restart local v21    # "numConfigs":I
    :cond_b
    move/from16 v5, v21

    .end local v21    # "numConfigs":I
    .restart local v5    # "numConfigs":I
    goto/16 :goto_3
.end method
