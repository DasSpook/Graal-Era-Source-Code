.class Lcom/threed/jpct/GL20;
.super Ljava/lang/Object;
.source "GL20.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Lcom/threed/jpct/GL20Handler;


# static fields
.field private static NEXT:I


# instance fields
.field private activeShader:Lcom/threed/jpct/GLSLShader;

.field private additionalColor:[F

.field private alpha:F

.field private ambientColor:[F

.field private attenuation:[F

.field private buffy4:Ljava/nio/IntBuffer;

.field private curColor:[F

.field private currentMatrixPointer:[F

.field private currentTextureStage:I

.field private defaultShader:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderFog:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

.field private depthMode:Z

.field private diffuseColors:[F

.field private fbo:I

.field private fboColorStorage:Lcom/threed/jpct/Texture;

.field private fboDepthStorage:Lcom/threed/jpct/Texture;

.field private fboTexture:I

.field private flatShading:Z

.field private fogColor:[F

.field private fogEnabled:Z

.field private fogEnd:F

.field private fogStart:F

.field private id:I

.field private lightCount:I

.field private lightPositions:[F

.field private lightsEnabled:Z

.field private lightsState:Ljava/util/BitSet;

.field private loggedShaderMsg:Z

.field private modelviewMatrix:[F

.field private projectionMatrix:[F

.field private shininess:F

.field private specularColors:[F

.field private storedShader:Lcom/threed/jpct/GLSLShader;

.field private storedUserShader:Lcom/threed/jpct/GLSLShader;

.field private tempMatrix:[F

.field private textureCombineRgb:I

.field private textureMatrix:[F

.field private textureMatrixUsed:Z

.field private textureModes:[I

.field private textureRgbScale:I

.field private textureStates:Ljava/util/BitSet;

.field private useColors:Z

.field private userShader:Lcom/threed/jpct/GLSLShader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/GL20;->NEXT:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x18

    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    .line 39
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

    .line 40
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

    .line 41
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

    .line 42
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShaderFog:Lcom/threed/jpct/GLSLShader;

    .line 43
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

    .line 44
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

    .line 45
    iput-object v2, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    .line 46
    iput-object v2, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    .line 48
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    .line 50
    iput v3, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    .line 52
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    .line 53
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/threed/jpct/GL20;->textureModes:[I

    .line 55
    iput v3, p0, Lcom/threed/jpct/GL20;->textureCombineRgb:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/threed/jpct/GL20;->textureRgbScale:I

    .line 58
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->flatShading:Z

    .line 60
    iput-object v2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    .line 61
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    .line 62
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    .line 63
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    .line 64
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    .line 65
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    .line 67
    iput-object v2, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/threed/jpct/GL20;->alpha:F

    .line 71
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->useColors:Z

    .line 73
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    .line 75
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    .line 77
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    .line 79
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    .line 81
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    .line 83
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->attenuation:[F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/GL20;->shininess:F

    .line 87
    iput v3, p0, Lcom/threed/jpct/GL20;->lightCount:I

    .line 89
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    .line 90
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/threed/jpct/GL20;->fogStart:F

    .line 91
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/threed/jpct/GL20;->fogEnd:F

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    .line 94
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    .line 95
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    .line 97
    sget v0, Lcom/threed/jpct/GL20;->NEXT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/threed/jpct/GL20;->NEXT:I

    iput v0, p0, Lcom/threed/jpct/GL20;->id:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GL20;->fbo:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GL20;->fboTexture:I

    .line 102
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    .line 103
    iput-object v2, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    .line 104
    iput-object v2, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    .line 105
    iput-object v2, p0, Lcom/threed/jpct/GL20;->fboColorStorage:Lcom/threed/jpct/Texture;

    .line 106
    iput-object v2, p0, Lcom/threed/jpct/GL20;->fboDepthStorage:Lcom/threed/jpct/Texture;

    .line 108
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->loggedShaderMsg:Z

    .line 110
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GL20;->buffy4:Ljava/nio/IntBuffer;

    .line 113
    const-string v0, "Initializing GL20 render pipeline..."

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 114
    sget-boolean v0, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 115
    sput-boolean v3, Lcom/threed/jpct/Config;->useVBO:Z

    .line 116
    const-string v0, "Support for VBO when running OpenGL ES 2.0 is faulty in Android 2.2...VBO will be disabled!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 119
    :cond_0
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    invoke-direct {v0, v2}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    .line 120
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex0Amb"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

    .line 122
    sget-boolean v0, Lcom/threed/jpct/Config;->skipDefaultShaders:Z

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex0"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

    .line 124
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex1"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

    .line 125
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex0Light0"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

    .line 126
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Fog"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderFog:Lcom/threed/jpct/GLSLShader;

    .line 127
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "FogLight0"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

    .line 128
    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Depth"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    .line 132
    iget-object v0, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    .line 133
    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    .line 134
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    .line 136
    iget-object v0, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    .line 138
    invoke-virtual {p0}, Lcom/threed/jpct/GL20;->resetShaderData()V

    .line 139
    invoke-virtual {p0}, Lcom/threed/jpct/GL20;->updateShaderData()Lcom/threed/jpct/GLSLShader;

    .line 141
    const-string v0, "GL20 render pipeline initialized!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private checkError(Ljava/lang/String;)V
    .locals 3
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 146
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-nez v0, :cond_0

    .line 150
    return-void

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 148
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private checkFrameBufferObject()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1966
    const v1, 0x8d40

    invoke-static {v1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 1967
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 1980
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected reply from glCheckFramebufferStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1983
    :goto_0
    :pswitch_1
    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    .line 1984
    const/4 v1, -0x1

    iput v1, p0, Lcom/threed/jpct/GL20;->fbo:I

    .line 1986
    :cond_0
    return-void

    .line 1971
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FrameBuffer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has caused a GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1974
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FrameBuffer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has caused a GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1977
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FrameBuffer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has caused a GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1967
    nop

    :pswitch_data_0
    .packed-switch 0x8cd5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private clearErrors()V
    .locals 1

    .prologue
    .line 1653
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    return-void
.end method

.method private getTextureStageIndex()I
    .locals 2

    .prologue
    .line 1646
    iget v0, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1647
    iget v0, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    const v1, 0x84c0

    sub-int/2addr v0, v1

    .line 1649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCap(I)Z
    .locals 3
    .param p1, "cap"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1659
    const/16 v2, 0xde1

    if-ne p1, v2, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return v0

    .line 1663
    :cond_1
    const/16 v2, 0x4000

    if-lt p1, v2, :cond_2

    const/16 v2, 0x4007

    if-gt p1, v2, :cond_2

    move v0, v1

    .line 1664
    goto :goto_0

    .line 1665
    :cond_2
    const/16 v2, 0xb50

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 1666
    goto :goto_0

    .line 1667
    :cond_3
    const/16 v2, 0xb57

    if-ne p1, v2, :cond_4

    move v0, v1

    .line 1668
    goto :goto_0

    .line 1669
    :cond_4
    const/16 v2, 0xbc0

    if-ne p1, v2, :cond_5

    move v0, v1

    .line 1670
    goto :goto_0

    .line 1671
    :cond_5
    const/16 v2, 0xba1

    if-ne p1, v2, :cond_6

    move v0, v1

    .line 1672
    goto :goto_0

    .line 1673
    :cond_6
    const/16 v2, 0xb60

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 1674
    goto :goto_0
.end method

.method private setIdentity([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1989
    const/4 v0, 0x0

    aput v2, p1, v0

    .line 1990
    const/4 v0, 0x1

    aput v1, p1, v0

    .line 1991
    const/4 v0, 0x2

    aput v1, p1, v0

    .line 1992
    const/4 v0, 0x3

    aput v1, p1, v0

    .line 1993
    const/4 v0, 0x4

    aput v1, p1, v0

    .line 1994
    const/4 v0, 0x5

    aput v2, p1, v0

    .line 1995
    const/4 v0, 0x6

    aput v1, p1, v0

    .line 1996
    const/4 v0, 0x7

    aput v1, p1, v0

    .line 1997
    const/16 v0, 0x8

    aput v1, p1, v0

    .line 1998
    const/16 v0, 0x9

    aput v1, p1, v0

    .line 1999
    const/16 v0, 0xa

    aput v2, p1, v0

    .line 2000
    const/16 v0, 0xb

    aput v1, p1, v0

    .line 2001
    const/16 v0, 0xc

    aput v1, p1, v0

    .line 2002
    const/16 v0, 0xd

    aput v1, p1, v0

    .line 2003
    const/16 v0, 0xe

    aput v1, p1, v0

    .line 2004
    const/16 v0, 0xf

    aput v2, p1, v0

    .line 2005
    return-void
.end method


# virtual methods
.method public bindVertexAttributes(Ljava/lang/String;II)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "attributesId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1769
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/GLSLShader;->getAttributeHandle(Ljava/lang/String;)I

    move-result v0

    .line 1770
    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1771
    const v1, 0x8892

    invoke-static {v1, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1772
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1773
    const/16 v2, 0x140c

    mul-int/lit8 v4, p2, 0x4

    move v1, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1775
    :cond_0
    return-void
.end method

.method public bindVertexAttributes(Ljava/lang/String;ILjava/nio/Buffer;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "attributes"    # Ljava/nio/Buffer;

    .prologue
    .line 1760
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/GLSLShader;->getAttributeHandle(Ljava/lang/String;)I

    move-result v0

    .line 1761
    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1762
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1763
    const/16 v2, 0x140c

    const/4 v3, 0x0

    mul-int/lit8 v4, p2, 0x4

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1765
    :cond_0
    return-void
.end method

.method public clearShader()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/GL20;->setShader(Lcom/threed/jpct/GLSLShader;)V

    .line 374
    return-void
.end method

.method public clearTangents()V
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1824
    :cond_0
    return-void
.end method

.method public clearTangents(I)V
    .locals 2
    .param p1, "tangentsId"    # I

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1814
    if-lez p1, :cond_0

    .line 1815
    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1818
    :cond_0
    return-void
.end method

.method public getTextureStagesRaw()I
    .locals 4

    .prologue
    .line 2043
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 2044
    .local v1, "sm":Ljava/nio/IntBuffer;
    const v2, 0x8b4c

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 2045
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 2046
    .local v0, "max":I
    return v0
.end method

.method public glActiveTexture(I)V
    .locals 0
    .param p1, "texture"    # I

    .prologue
    .line 378
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 379
    iput p1, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    .line 381
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 2
    .param p1, "func"    # I
    .param p2, "ref"    # F

    .prologue
    .line 385
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glAlphaFuncx(II)V
    .locals 2
    .param p1, "func"    # I
    .param p2, "ref"    # I

    .prologue
    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glBindBuffer(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .prologue
    .line 1278
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1281
    return-void
.end method

.method public glBindTexture(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .prologue
    .line 395
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 397
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 0
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .prologue
    .line 401
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 403
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .prologue
    .line 1285
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1287
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 1291
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 1293
    return-void
.end method

.method public glClear(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 407
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 409
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 413
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 415
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 5
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 419
    int-to-float v0, p1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    int-to-float v2, p3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    int-to-float v3, p4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 421
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 0
    .param p1, "depth"    # F

    .prologue
    .line 425
    invoke-static {p1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 427
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glClearStencil(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 436
    invoke-static {p1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 438
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 0
    .param p1, "texture"    # I

    .prologue
    .line 442
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 443
    iput p1, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    .line 445
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glClipPlanef(I[FI)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1307
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glClipPlanex(I[II)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1312
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glColor4f(FFFF)V
    .locals 2
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 449
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 450
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 451
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 452
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 454
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 2
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B
    .param p4, "alpha"    # B

    .prologue
    .line 1317
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glColor4x(IIII)V
    .locals 4
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 458
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 459
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 460
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 461
    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x3

    int-to-float v2, p4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 463
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 0
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .prologue
    .line 467
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 469
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1326
    :cond_0
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 476
    if-nez p4, :cond_0

    .line 477
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->useColors:Z

    .line 481
    :cond_0
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 485
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 487
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 491
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 493
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .prologue
    .line 497
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 499
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 503
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 505
    return-void
.end method

.method public glCullFace(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 509
    invoke-static {p1}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 511
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1330
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 1332
    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1336
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 1338
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 515
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 517
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 521
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 523
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 0
    .param p1, "func"    # I

    .prologue
    .line 527
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 529
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 533
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 535
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 0
    .param p1, "zNear"    # F
    .param p2, "zFar"    # F

    .prologue
    .line 539
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDepthRangef(FF)V

    .line 541
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 2
    .param p1, "zNear"    # I
    .param p2, "zFar"    # I

    .prologue
    .line 545
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glDisable(I)V
    .locals 3
    .param p1, "cap"    # I

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-direct {p0, p1}, Lcom/threed/jpct/GL20;->hasCap(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    const/16 v0, 0xde1

    if-ne p1, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0

    .line 563
    :cond_2
    const/16 v0, 0xb50

    if-ne p1, v0, :cond_3

    .line 564
    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    goto :goto_0

    .line 565
    :cond_3
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_4

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    add-int/lit16 v1, p1, -0x4000

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 567
    :cond_4
    const/16 v0, 0xb60

    if-ne p1, v0, :cond_0

    .line 568
    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    goto :goto_0
.end method

.method public glDisableClientState(I)V
    .locals 4
    .param p1, "array"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 576
    const v1, 0x8076

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    if-eq v1, v2, :cond_1

    .line 577
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 578
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    if-eq v1, v2, :cond_0

    .line 579
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 581
    :cond_0
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->useColors:Z

    .line 584
    :cond_1
    const v1, 0x8074

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    if-eq v1, v2, :cond_2

    .line 585
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 588
    :cond_2
    const v1, 0x8075

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    if-eq v1, v2, :cond_3

    .line 589
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 592
    :cond_3
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    .line 593
    .local v0, "textureIndex":I
    const v1, 0x8078

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, v1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v1, v1, v0

    if-eq v1, v2, :cond_4

    .line 594
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, v1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 597
    :cond_4
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 601
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 602
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1342
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 1344
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 606
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 608
    return-void
.end method

.method public glEnable(I)V
    .locals 3
    .param p1, "cap"    # I

    .prologue
    const/4 v2, 0x1

    .line 612
    invoke-direct {p0, p1}, Lcom/threed/jpct/GL20;->hasCap(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    const/16 v0, 0xde1

    if-ne p1, v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 626
    :cond_2
    const/16 v0, 0xb50

    if-ne p1, v0, :cond_3

    .line 627
    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    goto :goto_0

    .line 628
    :cond_3
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_4

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_4

    .line 629
    iget-object v0, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    add-int/lit16 v1, p1, -0x4000

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 630
    :cond_4
    const/16 v0, 0xb60

    if-ne p1, v0, :cond_0

    .line 631
    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    goto :goto_0
.end method

.method public glEnableClientState(I)V
    .locals 4
    .param p1, "array"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 639
    const v1, 0x8076

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    if-eq v1, v2, :cond_1

    .line 640
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 641
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    if-eq v1, v2, :cond_0

    .line 642
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 644
    :cond_0
    iput-boolean v3, p0, Lcom/threed/jpct/GL20;->useColors:Z

    .line 648
    :cond_1
    const v1, 0x8074

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    if-eq v1, v2, :cond_2

    .line 649
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 653
    :cond_2
    const v1, 0x8075

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    if-eq v1, v2, :cond_3

    .line 654
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v1, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 658
    :cond_3
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    .line 659
    .local v0, "textureIndex":I
    const v1, 0x8078

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, v1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v1, v1, v0

    if-eq v1, v2, :cond_4

    .line 660
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, v1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 663
    :cond_4
    return-void
.end method

.method public glFinish()V
    .locals 0

    .prologue
    .line 667
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 669
    return-void
.end method

.method public glFlush()V
    .locals 0

    .prologue
    .line 673
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 675
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 679
    const/16 v0, 0xb63

    if-ne p1, v0, :cond_1

    .line 680
    iput p2, p0, Lcom/threed/jpct/GL20;->fogStart:F

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    const/16 v0, 0xb64

    if-ne p1, v0, :cond_0

    .line 682
    iput p2, p0, Lcom/threed/jpct/GL20;->fogEnd:F

    goto :goto_0
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 5
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 688
    const/16 v0, 0xb66

    if-ne p1, v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    aput v1, v0, v2

    .line 690
    iget-object v0, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    aput v1, v0, v3

    .line 691
    iget-object v0, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    invoke-virtual {p2, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    aput v1, v0, v4

    .line 693
    :cond_0
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 698
    return-void
.end method

.method public glFogx(II)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 703
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 708
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 713
    return-void
.end method

.method public glFrontFace(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 717
    invoke-static {p1}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 719
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 723
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 725
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    int-to-float v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 731
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1348
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 1350
    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1354
    const-string v0, "before"

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->checkError(Ljava/lang/String;)V

    .line 1355
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 1357
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 735
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 737
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 741
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 743
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1361
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 1363
    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # [Z
    .param p3, "offset"    # I

    .prologue
    .line 1367
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetBooleanv(I[ZI)V

    .line 1369
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1373
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 1375
    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1379
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetBufferParameteriv(II[II)V

    .line 1381
    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1385
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1395
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetClipPlanex(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1400
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetError()I
    .locals 1

    .prologue
    .line 747
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1405
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetFixedv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1410
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1415
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 1417
    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1421
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetFloatv(I[FI)V

    .line 1423
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 752
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 754
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 758
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 760
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1428
    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1433
    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1438
    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1443
    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1448
    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1453
    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1458
    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1463
    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [Ljava/nio/Buffer;

    .prologue
    .line 1467
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I

    .prologue
    .line 764
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1472
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexEnviv(II[II)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1477
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1482
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1487
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1492
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1497
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1512
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1517
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glHint(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 769
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glHint(II)V

    .line 771
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .param p1, "buffer"    # I

    .prologue
    .line 1522
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsBuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 1527
    invoke-direct {p0, p1}, Lcom/threed/jpct/GL20;->hasCap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    .line 1530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 1535
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    return v0
.end method

.method public glLightModelf(IF)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 776
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 781
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 6
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    const/16 v0, 0xb53

    if-ne p1, v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    aget v1, p2, v2

    aput v1, v0, v2

    .line 787
    iget-object v0, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    aget v1, p2, v3

    aput v1, v0, v3

    .line 788
    iget-object v0, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    aget v1, p2, v4

    aput v1, v0, v4

    .line 789
    iget-object v0, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    aget v1, p2, v5

    aput v1, v0, v5

    .line 791
    :cond_0
    return-void
.end method

.method public glLightModelx(II)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 796
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 801
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 806
    return-void
.end method

.method public glLightf(IIF)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 810
    add-int/lit16 v0, p1, -0x4000

    .line 812
    .local v0, "pos":I
    const/16 v1, 0x1208

    if-ne p2, v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/threed/jpct/GL20;->attenuation:[F

    aput p3, v1, v0

    .line 815
    :cond_0
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 820
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 7
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 824
    add-int/lit16 v2, p1, -0x4000

    .line 825
    .local v2, "pos":I
    mul-int/lit8 v0, v2, 0x3

    .line 827
    .local v0, "index":I
    const/16 v3, 0x1203

    if-ne p2, v3, :cond_1

    .line 828
    iget-object v3, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aget v4, p3, v4

    aput v4, v3, v0

    .line 829
    iget-object v3, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget v4, p3, v5

    aput v4, v3, v1

    .line 830
    iget-object v3, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    aget v4, p3, v6

    aput v4, v3, v0

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    const/16 v3, 0x1201

    if-ne p2, v3, :cond_2

    .line 832
    iget-object v3, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget v4, p3, v4

    aput v4, v3, v0

    .line 833
    iget-object v3, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget v4, p3, v5

    aput v4, v3, v1

    .line 834
    iget-object v3, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    aget v4, p3, v6

    aput v4, v3, v0

    goto :goto_0

    .line 835
    :cond_2
    const/16 v3, 0x1202

    if-ne p2, v3, :cond_0

    .line 836
    iget-object v3, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget v4, p3, v4

    aput v4, v3, v0

    .line 837
    iget-object v3, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget v4, p3, v5

    aput v4, v3, v1

    .line 838
    iget-object v3, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    aget v4, p3, v6

    aput v4, v3, v0

    goto :goto_0
.end method

.method public glLightx(III)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 845
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 850
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 855
    return-void
.end method

.method public glLineWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 859
    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 861
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 865
    int-to-float v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 867
    return-void
.end method

.method public glLoadIdentity()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    .line 872
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v0, v1, :cond_0

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    .line 875
    :cond_0
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 4
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    .line 879
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v0, v1, :cond_0

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    .line 883
    :cond_0
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 3
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v0, v1, :cond_0

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    .line 892
    :cond_0
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 3
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v1, v2, :cond_0

    .line 900
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    .line 902
    :cond_0
    return-void

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glLoadMatrixx([II)V
    .locals 3
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 909
    iget-object v1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v1, v2, :cond_0

    .line 910
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    .line 912
    :cond_0
    return-void

    .line 907
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    add-int v2, v0, p2

    aget v2, p1, v2

    int-to-float v2, v2

    aput v2, v1, v0

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glLogicOp(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    .line 916
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 921
    const/16 v0, 0x408

    if-ne p1, v0, :cond_0

    .line 922
    const/16 v0, 0x1600

    if-ne p2, v0, :cond_0

    .line 923
    iput p3, p0, Lcom/threed/jpct/GL20;->shininess:F

    .line 927
    :cond_0
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 932
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 5
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 936
    const/16 v0, 0x408

    if-ne p1, v0, :cond_0

    .line 937
    const/16 v0, 0x1600

    if-ne p2, v0, :cond_0

    .line 938
    const/4 v0, 0x3

    aget v0, p3, v0

    iput v0, p0, Lcom/threed/jpct/GL20;->alpha:F

    .line 939
    iget-object v0, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    aget v1, p3, v2

    aput v1, v0, v2

    .line 940
    iget-object v0, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    aget v1, p3, v3

    aput v1, v0, v3

    .line 941
    iget-object v0, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    aget v1, p3, v4

    aput v1, v0, v4

    .line 945
    :cond_0
    return-void
.end method

.method public glMaterialx(III)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 950
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 955
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 960
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 964
    const/16 v0, 0x1700

    if-ne p1, v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    .line 974
    :goto_0
    return-void

    .line 966
    :cond_0
    const/16 v0, 0x1702

    if-ne p1, v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    goto :goto_0

    .line 968
    :cond_1
    const/16 v0, 0x1701

    if-ne p1, v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    goto :goto_0

    .line 971
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported matrix mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v1, 0x0

    .line 978
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 979
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 981
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 6
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 985
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 986
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 992
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glMultMatrixx([II)V
    .locals 2
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 998
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "s"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "q"    # F

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "q"    # I

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glNormal3f(FFF)V
    .locals 2
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F

    .prologue
    .line 1014
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glNormal3x(III)V
    .locals 2
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nz"    # I

    .prologue
    .line 1019
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glNormalPointer(III)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "offset"    # I

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    const/4 v1, 0x3

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1543
    :cond_0
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    const/4 v1, 0x3

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1027
    :cond_0
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1033
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    int-to-float v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1039
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 1043
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 1045
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 1547
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1552
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointParameterfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointParameterx(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 1562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1567
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointParameterxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 1049
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPointSizex(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 1054
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glPolygonOffset(FF)V
    .locals 0
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 1059
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    .line 1061
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 2
    .param p1, "factor"    # I
    .param p2, "units"    # I

    .prologue
    .line 1065
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    .line 1067
    return-void
.end method

.method public glPopMatrix()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    .line 1072
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v0, v1, :cond_0

    .line 1073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    .line 1076
    :cond_0
    return-void
.end method

.method public glPushMatrix()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 1085
    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1087
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 6
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1093
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 6
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1099
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .prologue
    .line 1103
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glSampleCoverage(FZ)V

    .line 1105
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 1109
    int-to-float v0, p1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glSampleCoverage(FZ)V

    .line 1111
    return-void
.end method

.method public glScalef(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1117
    return-void
.end method

.method public glScalex(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1123
    return-void
.end method

.method public glScissor(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1127
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 1129
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1133
    const/16 v0, 0x1d00

    if-ne p1, v0, :cond_0

    .line 1134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->flatShading:Z

    .line 1138
    :goto_0
    return-void

    .line 1136
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->flatShading:Z

    goto :goto_0
.end method

.method public glStencilFunc(III)V
    .locals 0
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1142
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 1144
    return-void
.end method

.method public glStencilMask(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 1148
    invoke-static {p1}, Landroid/opengl/GLES20;->glStencilMask(I)V

    .line 1150
    return-void
.end method

.method public glStencilOp(III)V
    .locals 0
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .prologue
    .line 1154
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilOp(III)V

    .line 1156
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 7
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v6

    .line 1583
    .local v6, "index":I
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v0, v0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v0, v0, v6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v0, v0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v0, v0, v6

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1586
    :cond_0
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 7
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v6

    .line 1161
    .local v6, "index":I
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v0, v0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v0, v0, v6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v0, v0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v0, v0, v6

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1165
    :cond_0
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 1169
    float-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/threed/jpct/GL20;->glTexEnvx(III)V

    .line 1171
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexEnvi(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1590
    invoke-virtual {p0, p1, p2, p3}, Lcom/threed/jpct/GL20;->glTexEnvx(III)V

    .line 1591
    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1595
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexEnviv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1600
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexEnvx(III)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1187
    const/16 v1, 0x2300

    if-eq p1, v1, :cond_0

    .line 1188
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not implemented: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    :cond_0
    const/16 v1, 0x2200

    if-ne p2, v1, :cond_4

    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, "p":I
    const/16 v1, 0x104

    if-ne p3, v1, :cond_2

    .line 1193
    const/4 v0, 0x1

    .line 1200
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureModes:[I

    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v2

    aput v0, v1, v2

    .line 1211
    .end local v0    # "p":I
    :goto_1
    return-void

    .line 1194
    .restart local v0    # "p":I
    :cond_2
    const/16 v1, 0x1e01

    if-ne p3, v1, :cond_3

    .line 1195
    const/4 v0, 0x2

    goto :goto_0

    .line 1196
    :cond_3
    const/16 v1, 0xbe2

    if-ne p3, v1, :cond_1

    .line 1197
    const/4 v0, 0x3

    goto :goto_0

    .line 1203
    .end local v0    # "p":I
    :cond_4
    const v1, 0x8571

    if-ne p2, v1, :cond_5

    .line 1204
    iput p3, p0, Lcom/threed/jpct/GL20;->textureCombineRgb:I

    goto :goto_1

    .line 1205
    :cond_5
    const v1, 0x8573

    if-ne p2, v1, :cond_6

    .line 1206
    iput p3, p0, Lcom/threed/jpct/GL20;->textureRgbScale:I

    goto :goto_1

    .line 1208
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexEnvxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 1227
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1229
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 1233
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1235
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1605
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 1606
    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1610
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glTexParameterfv(II[FI)V

    .line 1611
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1615
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1616
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1620
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 1621
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1625
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glTexParameteriv(II[II)V

    .line 1626
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1239
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1241
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1630
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexParameterxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1635
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 1245
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1247
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1253
    return-void
.end method

.method public glTranslatex(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1259
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1643
    :cond_0
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1267
    :cond_0
    return-void
.end method

.method public glViewport(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1271
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1273
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    goto :goto_0
.end method

.method public resetShaderData()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 337
    iput v3, p0, Lcom/threed/jpct/GL20;->alpha:F

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->useColors:Z

    .line 339
    iput v2, p0, Lcom/threed/jpct/GL20;->shininess:F

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 345
    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    aput v2, v1, v0

    .line 343
    iget-object v1, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    aput v3, v1, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/GLRenderer;Lcom/threed/jpct/FrameBuffer;)V
    .locals 10
    .param p1, "renderTarget"    # Lcom/threed/jpct/Texture;
    .param p2, "renderer"    # Lcom/threed/jpct/GLRenderer;
    .param p3, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 1828
    iget v3, p2, Lcom/threed/jpct/GLRenderer;->myID:I

    .line 1830
    .local v3, "myID":I
    if-nez p1, :cond_5

    .line 1831
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 1832
    iget v6, p0, Lcom/threed/jpct/GL20;->fbo:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 1836
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1837
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unbinding buffers ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1840
    :cond_0
    const v6, 0x8d40

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1841
    const v6, 0x8d41

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 1842
    invoke-virtual {p2, p3}, Lcom/threed/jpct/GLRenderer;->resetViewport(Lcom/threed/jpct/FrameBuffer;)V

    .line 1844
    :cond_1
    iget-object v6, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v6, :cond_3

    .line 1845
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    .line 1846
    iget-object v6, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v7, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    if-eq v6, v7, :cond_2

    .line 1847
    const-string v6, "Exiting from depth mode without the shader being set...strange..."

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1850
    :cond_2
    iget-object v6, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    iput-object v6, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    .line 1851
    iget-object v6, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    iput-object v6, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    .line 1853
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    .line 1854
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    .line 1963
    :cond_4
    :goto_0
    return-void

    .line 1856
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1857
    iget-object v1, p0, Lcom/threed/jpct/GL20;->buffy4:Ljava/nio/IntBuffer;

    .line 1858
    .local v1, "buffy":Ljava/nio/IntBuffer;
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1860
    iget-boolean v6, p1, Lcom/threed/jpct/Texture;->isShadowMap:Z

    iput-boolean v6, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    .line 1862
    iget v6, p1, Lcom/threed/jpct/Texture;->fbo:I

    iput v6, p0, Lcom/threed/jpct/GL20;->fbo:I

    .line 1863
    iget v4, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 1865
    .local v4, "renderBuffer":I
    iget v6, p1, Lcom/threed/jpct/Texture;->lastHandlerId:I

    iget v7, p0, Lcom/threed/jpct/GL20;->id:I

    if-eq v6, v7, :cond_6

    iget v6, p1, Lcom/threed/jpct/Texture;->lastHandlerId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 1866
    const/4 v6, -0x1

    iput v6, p0, Lcom/threed/jpct/GL20;->fbo:I

    .line 1868
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 1869
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    iget v6, v6, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    iget v7, p0, Lcom/threed/jpct/GL20;->id:I

    if-eq v6, v7, :cond_6

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    iget v6, v6, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 1870
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    const/4 v7, -0x1

    iput v7, v6, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    .line 1877
    :cond_6
    :goto_1
    iget v6, p0, Lcom/threed/jpct/GL20;->id:I

    iput v6, p1, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 1879
    const/4 v0, 0x0

    .line 1880
    .local v0, "buffersBuffer":Z
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1881
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    iget v7, p0, Lcom/threed/jpct/GL20;->id:I

    iput v7, v6, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    .line 1882
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    iget v4, v6, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    .line 1883
    const/4 v0, 0x1

    .line 1886
    :cond_7
    iget v6, p0, Lcom/threed/jpct/GL20;->fbo:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_11

    .line 1887
    const/4 v6, 0x1

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 1888
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    iput v6, p0, Lcom/threed/jpct/GL20;->fbo:I

    .line 1892
    invoke-virtual {p1, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v6

    if-nez v6, :cond_8

    .line 1893
    sget v6, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {p1, v3, v6}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 1894
    invoke-virtual {p2, p1}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    .line 1895
    iget-object v6, p2, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v7, 0x0

    const/4 v8, -0x1

    aput v8, v6, v7

    .line 1898
    :cond_8
    invoke-virtual {p1, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v5

    .line 1899
    .local v5, "tid":I
    const/4 v6, 0x0

    invoke-virtual {p2, v6, v5}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 1901
    invoke-virtual {p1, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v6

    iput v6, p0, Lcom/threed/jpct/GL20;->fboTexture:I

    .line 1903
    const v2, 0x8ce0

    .line 1905
    .local v2, "channel":I
    const v6, 0x8d40

    iget v7, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1906
    const v6, 0x8d40

    const/16 v7, 0xde1

    const/4 v8, 0x0

    invoke-static {v6, v2, v7, v5, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1907
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to create frame buffer ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/threed/jpct/GL20;->checkError(Ljava/lang/String;)V

    .line 1909
    if-eqz v0, :cond_9

    const/4 v6, -0x1

    if-ne v4, v6, :cond_f

    .line 1910
    :cond_9
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1911
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "Creating render buffer "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    const-string v6, "for depth buffer!"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1913
    :cond_a
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1914
    const/4 v6, 0x1

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 1915
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 1916
    const v6, 0x8d41

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 1917
    const v6, 0x8d41

    const v7, 0x81a5

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 1918
    const v6, 0x8d40

    const v7, 0x8d00

    const v8, 0x8d41

    invoke-static {v6, v7, v8, v4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 1919
    if-eqz v0, :cond_e

    .line 1920
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v6

    iput v4, v6, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    .line 1924
    :goto_3
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1925
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Render buffer created: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1935
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->checkFrameBufferObject()V

    .line 1937
    iget v6, p0, Lcom/threed/jpct/GL20;->fbo:I

    iput v6, p1, Lcom/threed/jpct/Texture;->fbo:I

    .line 1955
    .end local v2    # "channel":I
    .end local v5    # "tid":I
    :goto_5
    iget-object v6, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v7, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    if-eq v6, v7, :cond_4

    iget-boolean v6, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v6, :cond_4

    .line 1956
    iget-object v6, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iput-object v6, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    .line 1957
    iget-object v6, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iput-object v6, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    .line 1958
    iget-object v6, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    iput-object v6, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    .line 1959
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    .line 1960
    iget-object v6, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v7, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v6, v7}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    goto/16 :goto_0

    .line 1873
    .end local v0    # "buffersBuffer":Z
    :cond_c
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 1911
    .restart local v0    # "buffersBuffer":Z
    .restart local v2    # "channel":I
    .restart local v5    # "tid":I
    :cond_d
    const-string v6, "in depth mode!"

    goto/16 :goto_2

    .line 1922
    :cond_e
    iput v4, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    goto :goto_3

    .line 1928
    :cond_f
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1929
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Using depth buffer\'s render buffer "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1931
    :cond_10
    const v6, 0x8d41

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 1932
    const v6, 0x8d41

    const v7, 0x81a5

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 1933
    const v6, 0x8d40

    const v7, 0x8d00

    const v8, 0x8d41

    invoke-static {v6, v7, v8, v4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    goto :goto_4

    .line 1939
    .end local v2    # "channel":I
    .end local v5    # "tid":I
    :cond_11
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1940
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Binding buffers ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1942
    :cond_12
    const v6, 0x8d40

    iget v7, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1943
    const v6, 0x8d41

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    goto/16 :goto_5
.end method

.method public setShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 2
    .param p1, "shader"    # Lcom/threed/jpct/GLSLShader;

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iput-object p1, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    .line 356
    if-eqz p1, :cond_2

    .line 357
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader;->preInit()V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iget v1, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    .line 363
    iget-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    iget v1, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    .line 366
    iget-object v0, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    goto :goto_0
.end method

.method public setTangents(I)V
    .locals 6
    .param p1, "tangentsId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1804
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1805
    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1806
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1807
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, 0x4

    const/16 v2, 0x140c

    const/16 v4, 0x10

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1809
    :cond_0
    return-void
.end method

.method public setTangents(Ljava/nio/Buffer;)V
    .locals 6
    .param p1, "tangents"    # Ljava/nio/Buffer;

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1799
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, 0x4

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/16 v4, 0x10

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1801
    :cond_0
    return-void
.end method

.method public unbindVertexAttributes(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "attributesId"    # I

    .prologue
    .line 1787
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/GLSLShader;->getAttributeHandle(Ljava/lang/String;)I

    move-result v0

    .line 1788
    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1789
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1790
    if-lez p3, :cond_0

    .line 1791
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1794
    :cond_0
    return-void
.end method

.method public unbindVertexAttributes(Ljava/lang/String;ILjava/nio/Buffer;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "attributes"    # Ljava/nio/Buffer;

    .prologue
    .line 1779
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/GLSLShader;->getAttributeHandle(Ljava/lang/String;)I

    move-result v0

    .line 1780
    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1781
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1783
    :cond_0
    return-void
.end method

.method public unloadRenderTarget(Lcom/threed/jpct/Texture;)V
    .locals 7
    .param p1, "texture"    # Lcom/threed/jpct/Texture;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2009
    iget-object v0, p0, Lcom/threed/jpct/GL20;->buffy4:Ljava/nio/IntBuffer;

    .line 2011
    .local v0, "buffy":Ljava/nio/IntBuffer;
    iget v1, p1, Lcom/threed/jpct/Texture;->fbo:I

    .line 2012
    .local v1, "fbo":I
    iget v2, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 2014
    .local v2, "renderBuffer":I
    if-ne v1, v4, :cond_1

    .line 2016
    const v3, 0x8d40

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 2018
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 2019
    if-eq v1, v4, :cond_0

    .line 2020
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 2021
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 2022
    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 2023
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 2024
    iput v4, p1, Lcom/threed/jpct/Texture;->fbo:I

    .line 2027
    :cond_0
    if-eq v2, v4, :cond_1

    .line 2028
    const v3, 0x8d41

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 2029
    if-eq v2, v4, :cond_1

    .line 2030
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 2031
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 2032
    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 2033
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 2034
    iput v4, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 2039
    :cond_1
    return-void
.end method

.method public updateShaderData()Lcom/threed/jpct/GLSLShader;
    .locals 13

    .prologue
    .line 162
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "Can\'t render into a depth map without the shader being set!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    .line 168
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GL20;->lightCount:I

    .line 173
    iget v6, p0, Lcom/threed/jpct/GL20;->lightCount:I

    .line 174
    .local v6, "lights":I
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    if-nez v0, :cond_2

    .line 175
    const/4 v6, 0x0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    if-eq v0, v1, :cond_5

    .line 179
    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v10

    .line 180
    .local v10, "texCount":I
    iget-object v12, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    .line 182
    .local v12, "tmp":Lcom/threed/jpct/GLSLShader;
    const/4 v0, 0x1

    if-le v10, v0, :cond_1c

    .line 183
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1b

    .line 184
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

    .line 209
    :cond_3
    :goto_0
    if-nez v12, :cond_4

    .line 211
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    .line 212
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->loggedShaderMsg:Z

    if-nez v0, :cond_4

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->loggedShaderMsg:Z

    .line 214
    const-string v0, "Your application uses default shader, but they have been disabled in Config. Consider to enable them or performance will suffer!"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    if-eq v12, v0, :cond_5

    .line 219
    iget v0, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v12, v0}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    .line 220
    iput-object v12, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    .line 224
    .end local v10    # "texCount":I
    .end local v12    # "tmp":Lcom/threed/jpct/GLSLShader;
    :cond_5
    iget-object v7, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    .line 226
    .local v7, "newShader":Lcom/threed/jpct/GLSLShader;
    iget v0, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v7, v0}, Lcom/threed/jpct/GLSLShader;->checkContext(I)V

    .line 228
    iget-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    if-ne v0, v1, :cond_6

    .line 229
    iget-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader;->update()V

    .line 232
    :cond_6
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 233
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 234
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 237
    :cond_7
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 238
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 241
    :cond_8
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 242
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 245
    :cond_9
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 246
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 249
    :cond_a
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 250
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->alpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 253
    :cond_b
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 254
    iget v1, v7, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->useColors:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 257
    :cond_c
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 258
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 261
    :cond_d
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 262
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 265
    :cond_e
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/threed/jpct/GL20;->lightCount:I

    if-lez v0, :cond_13

    .line 267
    mul-int/lit8 v8, v6, 0x3

    .line 268
    .local v8, "pos":I
    iget-object v0, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    array-length v0, v0

    if-ge v8, v0, :cond_f

    .line 269
    iget-object v0, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .local v9, "pos":I
    const v1, -0x3b864000    # -999.0f

    aput v1, v0, v8

    .line 270
    iget-object v0, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const v1, -0x3b864000    # -999.0f

    aput v1, v0, v9

    .line 271
    iget-object v0, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    const v1, -0x3b864000    # -999.0f

    aput v1, v0, v8

    .line 274
    :cond_f
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 275
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-object v2, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 278
    :cond_10
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 279
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-object v2, p0, Lcom/threed/jpct/GL20;->attenuation:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 282
    :cond_11
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 283
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-object v2, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 286
    :cond_12
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 287
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-object v2, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 291
    .end local v8    # "pos":I
    :cond_13
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 293
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 296
    :cond_14
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    if-eqz v0, :cond_15

    .line 297
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->shininess:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 300
    :cond_15
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    if-eqz v0, :cond_21

    .line 301
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 302
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->fogStart:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 304
    :cond_16
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 305
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    iget v1, p0, Lcom/threed/jpct/GL20;->fogEnd:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 307
    :cond_17
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 308
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 316
    :cond_18
    :goto_2
    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v11

    .line 324
    .local v11, "textureCount":I
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 325
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 328
    :cond_19
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 329
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureModes:[I

    const/4 v2, 0x0

    invoke-static {v0, v11, v1, v2}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 332
    :cond_1a
    return-object v7

    .line 186
    .end local v7    # "newShader":Lcom/threed/jpct/GLSLShader;
    .end local v11    # "textureCount":I
    .restart local v10    # "texCount":I
    .restart local v12    # "tmp":Lcom/threed/jpct/GLSLShader;
    :cond_1b
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    goto/16 :goto_0

    .line 189
    :cond_1c
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

    .line 190
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    if-eqz v0, :cond_1e

    .line 191
    const/4 v0, 0x1

    if-eq v6, v0, :cond_1d

    .line 192
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShaderFog:Lcom/threed/jpct/GLSLShader;

    goto/16 :goto_0

    .line 194
    :cond_1d
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

    goto/16 :goto_0

    .line 197
    :cond_1e
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    if-nez v0, :cond_3

    .line 198
    if-nez v6, :cond_1f

    .line 199
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

    goto/16 :goto_0

    .line 201
    :cond_1f
    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 202
    iget-object v12, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

    goto/16 :goto_0

    .line 254
    .end local v10    # "texCount":I
    .end local v12    # "tmp":Lcom/threed/jpct/GLSLShader;
    .restart local v7    # "newShader":Lcom/threed/jpct/GLSLShader;
    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 311
    :cond_21
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 312
    iget v0, v7, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_2
.end method

.method public uploadTexture(IIIIZLjava/nio/ByteBuffer;)Z
    .locals 32
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "mode"    # I
    .param p4, "level"    # I
    .param p5, "bpp4"    # Z
    .param p6, "texture"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1681
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1683
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v23

    .line 1684
    .local v23, "texVirt":Lcom/threed/jpct/Virtualizer;
    if-eqz v23, :cond_3

    sget-boolean v3, Lcom/threed/jpct/Config;->cacheCompressedTextures:Z

    if-eqz v3, :cond_3

    const/16 v27, 0x1

    .line 1686
    .local v27, "useCache":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1687
    .local v19, "s":J
    const-string v3, "Compressing texture to ETC1..."

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1688
    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v26

    .line 1689
    .local v26, "tmpBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    .line 1690
    .local v13, "end":I
    const/16 v3, 0xf

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 1692
    .local v18, "res":[B
    mul-int/lit8 v3, v13, 0x6f

    move/from16 v0, p4

    mul-int/lit16 v4, v0, 0x6f5

    add-int/2addr v3, v4

    int-to-long v10, v3

    .line 1694
    .local v10, "chkSum":J
    const/4 v14, 0x0

    .local v14, "i":I
    :cond_0
    if-lt v14, v13, :cond_4

    .line 1732
    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1735
    .local v21, "s2":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "etc1_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1736
    .local v16, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1737
    .local v8, "tex":Landroid/opengl/ETC1Util$ETC1Texture;
    if-eqz v27, :cond_1

    .line 1738
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Virtualizer;->readFromCache(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1739
    .local v9, "bb":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_1

    .line 1740
    new-instance v8, Landroid/opengl/ETC1Util$ETC1Texture;

    .end local v8    # "tex":Landroid/opengl/ETC1Util$ETC1Texture;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v8, v0, v1, v9}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    .line 1744
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    .restart local v8    # "tex":Landroid/opengl/ETC1Util$ETC1Texture;
    :cond_1
    if-nez v8, :cond_2

    .line 1745
    const/4 v3, 0x3

    mul-int/lit8 v4, p1, 0x3

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/ETC1Util;->compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v8

    .line 1746
    if-eqz v27, :cond_2

    .line 1747
    invoke-virtual {v8}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/Virtualizer;->storeInCache(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z

    .line 1750
    :cond_2
    const/16 v3, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    move/from16 v4, p4

    invoke-static/range {v3 .. v8}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 1751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1752
    .local v24, "time":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...done in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v24, v19

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v24, v21

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1753
    const/4 v3, 0x1

    .line 1755
    .end local v8    # "tex":Landroid/opengl/ETC1Util$ETC1Texture;
    .end local v10    # "chkSum":J
    .end local v13    # "end":I
    .end local v14    # "i":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "res":[B
    .end local v19    # "s":J
    .end local v21    # "s2":J
    .end local v23    # "texVirt":Lcom/threed/jpct/Virtualizer;
    .end local v24    # "time":J
    .end local v26    # "tmpBuf":Ljava/nio/ByteBuffer;
    .end local v27    # "useCache":Z
    :goto_1
    return v3

    .line 1684
    .restart local v23    # "texVirt":Lcom/threed/jpct/Virtualizer;
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1695
    .restart local v10    # "chkSum":J
    .restart local v13    # "end":I
    .restart local v14    # "i":I
    .restart local v18    # "res":[B
    .restart local v19    # "s":J
    .restart local v26    # "tmpBuf":Ljava/nio/ByteBuffer;
    .restart local v27    # "useCache":Z
    :cond_4
    const/4 v12, 0x0

    .line 1696
    .local v12, "cnt":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1697
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    .line 1698
    add-int/lit8 v14, v14, 0x4

    .line 1699
    add-int/lit8 v12, v12, 0x3

    .line 1700
    add-int/lit8 v3, v14, 0x4

    if-ge v3, v13, :cond_5

    .line 1701
    const/4 v3, 0x3

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1702
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    .line 1703
    add-int/lit8 v14, v14, 0x4

    .line 1704
    add-int/lit8 v12, v12, 0x3

    .line 1706
    :cond_5
    add-int/lit8 v3, v14, 0x4

    if-ge v3, v13, :cond_6

    .line 1707
    const/4 v3, 0x3

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1708
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    .line 1709
    add-int/lit8 v14, v14, 0x4

    .line 1710
    add-int/lit8 v12, v12, 0x3

    .line 1712
    :cond_6
    add-int/lit8 v3, v14, 0x4

    if-ge v3, v13, :cond_7

    .line 1713
    const/4 v3, 0x3

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1714
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    .line 1715
    add-int/lit8 v14, v14, 0x4

    .line 1716
    add-int/lit8 v12, v12, 0x3

    .line 1718
    :cond_7
    add-int/lit8 v3, v14, 0x4

    if-ge v3, v13, :cond_8

    .line 1719
    const/4 v3, 0x3

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1720
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    .line 1721
    add-int/lit8 v14, v14, 0x4

    .line 1722
    add-int/lit8 v12, v12, 0x3

    .line 1724
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1725
    const/4 v15, 0x1

    .line 1726
    .local v15, "mul":I
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-byte v17, v18, v3

    .line 1727
    .local v17, "re":B
    and-int/lit8 v5, v14, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const/4 v15, 0x1

    .line 1728
    :goto_3
    mul-int/lit8 v5, v14, 0xa

    int-to-long v5, v5

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    int-to-long v0, v15

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    add-long v5, v5, v28

    add-long/2addr v10, v5

    .line 1726
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1727
    :cond_9
    const/4 v15, -0x1

    goto :goto_3

    .line 1755
    .end local v10    # "chkSum":J
    .end local v12    # "cnt":I
    .end local v13    # "end":I
    .end local v14    # "i":I
    .end local v15    # "mul":I
    .end local v17    # "re":B
    .end local v18    # "res":[B
    .end local v19    # "s":J
    .end local v23    # "texVirt":Lcom/threed/jpct/Virtualizer;
    .end local v26    # "tmpBuf":Ljava/nio/ByteBuffer;
    .end local v27    # "useCache":Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
