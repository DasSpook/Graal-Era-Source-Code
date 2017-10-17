.class public Lcom/threed/jpct/util/AAConfigChooser;
.super Ljava/lang/Object;
.source "AAConfigChooser.java"

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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    .line 25
    const/16 v0, 0x10

    iput v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    .line 34
    iput-object p1, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "withAlpha"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    .line 25
    const/16 v0, 0x10

    iput v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    .line 47
    iput-object p1, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 48
    iput-boolean p2, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/opengl/GLSurfaceView;ZI)V
    .locals 1
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "withAlpha"    # Z
    .param p3, "depth"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    .line 25
    const/16 v0, 0x10

    iput v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    .line 66
    iput-object p1, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 67
    iput-boolean p2, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    .line 68
    iput p3, p0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    .line 69
    return-void
.end method

.method private error()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    sput v1, Lcom/threed/jpct/Config;->aaMode:I

    .line 178
    const-string v0, "Failed to choose config!"

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 179
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
    .line 182
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 183
    .local v0, "val":[I
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x0

    aget p5, v0, v1

    .line 186
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 25
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    if-eqz v1, :cond_8

    const/16 v20, 0x5

    .line 75
    .local v20, "greenSize":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    if-eqz v1, :cond_9

    const/16 v17, 0x1

    .line 76
    .local v17, "alphaSize":I
    :goto_1
    const/16 v23, 0x5

    .line 77
    .local v23, "redSize":I
    const/16 v18, 0x5

    .line 79
    .local v18, "blueSize":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    .line 80
    const/16 v23, 0x8

    .line 81
    const/16 v18, 0x8

    .line 82
    const/16 v20, 0x8

    .line 83
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    if-eqz v1, :cond_a

    const/16 v17, 0x8

    .line 87
    :cond_0
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_3
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 98
    .local v6, "val":[I
    const/16 v1, 0x11

    new-array v3, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v23, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x3

    aput v20, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v18, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v17, v3, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v3, v1

    const/16 v1, 0x9

    .line 99
    const/16 v2, 0x18

    aput v2, v3, v1

    const/16 v1, 0xa

    const/16 v2, 0x3040

    aput v2, v3, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v3, v1

    const/16 v1, 0xc

    const/16 v2, 0x3032

    aput v2, v3, v1

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput v2, v3, v1

    const/16 v1, 0xe

    const/16 v2, 0x3031

    aput v2, v3, v1

    const/16 v1, 0xf

    const/4 v2, 0x2

    aput v2, v3, v1

    const/16 v1, 0x10

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 101
    .local v3, "configSpec":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const/16 v1, 0x11

    new-array v3, v1, [I

    .end local v3    # "configSpec":[I
    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v23, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x3

    aput v20, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v18, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v17, v3, v1

    const/16 v1, 0x8

    .line 103
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

    const/16 v2, 0x3032

    aput v2, v3, v1

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput v2, v3, v1

    const/16 v1, 0xe

    const/16 v2, 0x3031

    aput v2, v3, v1

    const/16 v1, 0xf

    const/4 v2, 0x2

    aput v2, v3, v1

    const/16 v1, 0x10

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 104
    .restart local v3    # "configSpec":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    .line 108
    :cond_1
    const/4 v1, 0x0

    aget v5, v6, v1

    .line 110
    .local v5, "numConfigs":I
    if-gtz v5, :cond_c

    .line 114
    const/16 v13, 0x30e0

    .line 115
    .local v13, "EGL_COVERAGE_BUFFERS_NV":I
    const/16 v14, 0x30e1

    .line 116
    .local v14, "EGL_COVERAGE_SAMPLES_NV":I
    const/16 v16, 0x30e2

    .line 117
    .local v16, "EGL_DEPTH_ENCODING_NV":I
    const/16 v15, 0x30e3

    .line 119
    .local v15, "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    const/16 v1, 0x13

    new-array v3, v1, [I

    .end local v3    # "configSpec":[I
    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v23, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x3

    aput v20, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v18, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v17, v3, v1

    const/16 v1, 0x8

    .line 120
    const/16 v2, 0x3025

    aput v2, v3, v1

    const/16 v1, 0x9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

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

    const/16 v2, 0x30e0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput v2, v3, v1

    const/16 v1, 0x10

    .line 121
    const/16 v2, 0x30e1

    aput v2, v3, v1

    const/16 v1, 0x11

    const/4 v2, 0x2

    aput v2, v3, v1

    const/16 v1, 0x12

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 123
    .restart local v3    # "configSpec":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .end local v5    # "numConfigs":I
    move-result v1

    if-nez v1, :cond_2

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    .line 126
    :cond_2
    const/4 v1, 0x0

    aget v5, v6, v1

    .line 128
    .restart local v5    # "numConfigs":I
    if-gtz v5, :cond_b

    .line 129
    const-string v1, "No AA config found...defaulting to non-AA modes!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 130
    const/16 v1, 0xd

    new-array v3, v1, [I

    .end local v3    # "configSpec":[I
    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v23, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x3

    aput v20, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v18, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v17, v3, v1

    const/16 v1, 0x8

    .line 131
    const/16 v2, 0x3025

    aput v2, v3, v1

    const/16 v1, 0x9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

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

    .line 133
    .restart local v3    # "configSpec":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .end local v5    # "numConfigs":I
    move-result v1

    if-nez v1, :cond_3

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    .line 136
    :cond_3
    const/4 v1, 0x0

    aget v5, v6, v1

    .line 138
    .restart local v5    # "numConfigs":I
    if-gtz v5, :cond_4

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    .line 141
    :cond_4
    const/4 v1, 0x0

    sput v1, Lcom/threed/jpct/Config;->aaMode:I

    .line 142
    const-string v1, "No AA enabled!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 153
    .end local v13    # "EGL_COVERAGE_BUFFERS_NV":I
    .end local v14    # "EGL_COVERAGE_SAMPLES_NV":I
    .end local v15    # "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    .end local v16    # "EGL_DEPTH_ENCODING_NV":I
    :goto_4
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v4, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 154
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    .line 158
    :cond_5
    const/16 v22, -0x1

    .line 159
    .local v22, "index":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    array-length v1, v4

    move/from16 v0, v21

    if-lt v0, v1, :cond_d

    .line 165
    :goto_6
    const/4 v1, -0x1

    move/from16 v0, v22

    if-ne v0, v1, :cond_6

    .line 166
    const-string v1, "Unable to find a matching config...using default!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 167
    const/16 v22, 0x0

    .line 169
    :cond_6
    array-length v1, v4

    if-lez v1, :cond_f

    aget-object v19, v4, v22

    .line 170
    .local v19, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_7
    if-nez v19, :cond_7

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    .line 173
    .end local v3    # "configSpec":[I
    .end local v4    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5    # "numConfigs":I
    .end local v6    # "val":[I
    .end local v19    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v21    # "i":I
    .end local v22    # "index":I
    :cond_7
    :goto_8
    return-object v19

    .line 74
    .end local v17    # "alphaSize":I
    .end local v18    # "blueSize":I
    .end local v20    # "greenSize":I
    .end local v23    # "redSize":I
    :cond_8
    const/16 v20, 0x6

    goto/16 :goto_0

    .line 75
    .restart local v20    # "greenSize":I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 83
    .restart local v17    # "alphaSize":I
    .restart local v18    # "blueSize":I
    .restart local v23    # "redSize":I
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 90
    :catch_0
    move-exception v24

    .line 91
    .local v24, "t":Ljava/lang/Throwable;
    const-string v1, "Couldn\'t initialize OpenGL ES 2.0"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 92
    const/16 v19, 0x0

    goto :goto_8

    .line 144
    .end local v24    # "t":Ljava/lang/Throwable;
    .restart local v3    # "configSpec":[I
    .restart local v5    # "numConfigs":I
    .restart local v6    # "val":[I
    .restart local v13    # "EGL_COVERAGE_BUFFERS_NV":I
    .restart local v14    # "EGL_COVERAGE_SAMPLES_NV":I
    .restart local v15    # "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    .restart local v16    # "EGL_DEPTH_ENCODING_NV":I
    :cond_b
    const/4 v1, 0x2

    sput v1, Lcom/threed/jpct/Config;->aaMode:I

    .line 145
    const-string v1, "CSAA enabled!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 148
    .end local v13    # "EGL_COVERAGE_BUFFERS_NV":I
    .end local v14    # "EGL_COVERAGE_SAMPLES_NV":I
    .end local v15    # "EGL_DEPTH_ENCODING_NONLINEAR_NV":I
    .end local v16    # "EGL_DEPTH_ENCODING_NV":I
    :cond_c
    const/4 v1, 0x1

    sput v1, Lcom/threed/jpct/Config;->aaMode:I

    .line 149
    const-string v1, "MSAA enabled with 2 samples!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 160
    .restart local v4    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v21    # "i":I
    .restart local v22    # "index":I
    :cond_d
    aget-object v10, v4, v21

    const/16 v11, 0x3024

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v12}, Lcom/threed/jpct/util/AAConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    .line 161
    move/from16 v22, v21

    .line 162
    goto :goto_6

    .line 159
    :cond_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 169
    :cond_f
    const/16 v19, 0x0

    goto :goto_7

    .line 88
    .end local v3    # "configSpec":[I
    .end local v4    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5    # "numConfigs":I
    .end local v6    # "val":[I
    .end local v21    # "i":I
    .end local v22    # "index":I
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method
