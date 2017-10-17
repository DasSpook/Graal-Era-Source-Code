.class public Lcom/threed/jpct/GLSLShader;
.super Ljava/lang/Object;
.source "GLSLShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threed/jpct/GLSLShader$Uniform;,
        Lcom/threed/jpct/GLSLShader$UniformMap;
    }
.end annotation


# static fields
.field private static NEXT:I

.field private static REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static locator:Lcom/threed/jpct/ShaderLocator;


# instance fields
.field additionalColorHandle:I

.field alphaHandle:I

.field ambientColorHandle:I

.field attenuationHandle:I

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blendingModeHandle:I

.field colorHandle:I

.field diffuseColorsHandle:I

.field directMode:Z

.field fogColorHandle:I

.field fogEndHandle:I

.field fogStartHandle:I

.field private frgSource:Ljava/lang/String;

.field id:I

.field init:Z

.field private keyTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastContext:I

.field lightCountHandle:I

.field lightPositionsHandle:I

.field mvMatrixHandle:I

.field mvpMatrixHandle:I

.field needsTangents:Z

.field private newUniforms:Z

.field normalHandle:I

.field pMatrixHandle:I

.field private program:I

.field shininessHandle:I

.field specularColorsHandle:I

.field tangentHandle:I

.field texMatrixHandle:I

.field textureCountHandle:I

.field textureHandle:[I

.field textureUnitHandle:[I

.field private tmp:Lcom/threed/jpct/Matrix;

.field private tmpFloats:[F

.field private tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

.field private toRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

.field useColorsHandle:I

.field vertexHandle:I

.field private vtxSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    .line 101
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/GLSLShader;->NEXT:I

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "appendix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    .line 104
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    .line 105
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    .line 106
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    .line 107
    new-array v6, v7, [I

    iput-object v6, p0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    .line 108
    new-array v6, v7, [I

    iput-object v6, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    .line 109
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    .line 110
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    .line 111
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    .line 112
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    .line 113
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    .line 114
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    .line 115
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    .line 116
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    .line 117
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    .line 118
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    .line 119
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    .line 120
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    .line 121
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    .line 122
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    .line 123
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    .line 124
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    .line 125
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    .line 126
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    .line 127
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    .line 129
    iput-boolean v9, p0, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    .line 130
    iput-boolean v9, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    .line 132
    sget v6, Lcom/threed/jpct/GLSLShader;->NEXT:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/threed/jpct/GLSLShader;->NEXT:I

    iput v6, p0, Lcom/threed/jpct/GLSLShader;->id:I

    .line 134
    iput-boolean v9, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 136
    iput v8, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    .line 138
    iput v9, p0, Lcom/threed/jpct/GLSLShader;->program:I

    .line 140
    iput-object v10, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    .line 141
    iput-object v10, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    .line 143
    iput-boolean v9, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 144
    new-instance v6, Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-direct {v6, v10}, Lcom/threed/jpct/GLSLShader$UniformMap;-><init>(Lcom/threed/jpct/GLSLShader$UniformMap;)V

    iput-object v6, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    .line 145
    iput-object v10, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    .line 146
    iput-object v10, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    .line 150
    new-instance v6, Lcom/threed/jpct/Matrix;

    invoke-direct {v6}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v6, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    .line 151
    const/16 v6, 0x10

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/threed/jpct/GLSLShader;->tmpFloats:[F

    .line 152
    new-instance v6, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v6}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>()V

    iput-object v6, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 153
    iput-object v10, p0, Lcom/threed/jpct/GLSLShader;->attributes:Ljava/util/Map;

    .line 221
    sget-object v6, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    if-nez v6, :cond_0

    .line 222
    new-instance v6, Lcom/threed/jpct/ShaderLocator;

    invoke-direct {v6}, Lcom/threed/jpct/ShaderLocator;-><init>()V

    sput-object v6, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->check20()V

    .line 226
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "Loading default shaders "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " shaders in replacement map!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/threed/jpct/GL20CompLayer;->getFragmentShaderName()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "name":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 231
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 232
    .local v3, "pos":I
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .end local v3    # "pos":I
    :cond_1
    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "repName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, "fs":Ljava/lang/String;
    sget-object v6, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 239
    const-string v6, "Using replacement fragment shader instead of default one!"

    invoke-static {v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 240
    sget-object v6, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fs":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 245
    .restart local v1    # "fs":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/threed/jpct/GL20CompLayer;->getVertexShaderName()Ljava/lang/String;

    move-result-object v2

    .line 246
    if-eqz p1, :cond_2

    .line 247
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 248
    .restart local v3    # "pos":I
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .end local v3    # "pos":I
    :cond_2
    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 253
    const/4 v5, 0x0

    .line 254
    .local v5, "vs":Ljava/lang/String;
    sget-object v6, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 255
    const-string v6, "Using replacement vertex shader instead of default one!"

    invoke-static {v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 256
    sget-object v6, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "vs":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 261
    .restart local v5    # "vs":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v5, v1}, Lcom/threed/jpct/GLSLShader;->loadProgram(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "fs":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "repName":Ljava/lang/String;
    .end local v5    # "vs":Ljava/lang/String;
    :goto_3
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->init()V

    .line 269
    iput-boolean v11, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    .line 270
    return-void

    .line 226
    :cond_3
    :try_start_1
    const-string v6, ""

    goto/16 :goto_0

    .line 242
    .restart local v1    # "fs":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "repName":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    invoke-virtual {v6, v2}, Lcom/threed/jpct/ShaderLocator;->getShaderCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 258
    .restart local v5    # "vs":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    invoke-virtual {v6, v2}, Lcom/threed/jpct/ShaderLocator;->getShaderCode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_2

    .line 263
    .end local v1    # "fs":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "repName":Ljava/lang/String;
    .end local v5    # "vs":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Unable to load shader!"

    invoke-static {v6, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 265
    invoke-static {v0, v9}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "vertexShaderSource"    # Ljava/lang/String;
    .param p2, "fragmentShaderSource"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    .line 104
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    .line 105
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    .line 106
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    .line 107
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    .line 108
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    .line 109
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    .line 110
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    .line 111
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    .line 112
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    .line 113
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    .line 114
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    .line 115
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    .line 116
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    .line 117
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    .line 118
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    .line 119
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    .line 120
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    .line 121
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    .line 122
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    .line 123
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    .line 124
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    .line 125
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    .line 126
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    .line 127
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    .line 129
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    .line 130
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    .line 132
    sget v0, Lcom/threed/jpct/GLSLShader;->NEXT:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/threed/jpct/GLSLShader;->NEXT:I

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->id:I

    .line 134
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 136
    iput v3, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    .line 138
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    .line 140
    iput-object v4, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    .line 141
    iput-object v4, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 144
    new-instance v0, Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-direct {v0, v4}, Lcom/threed/jpct/GLSLShader$UniformMap;-><init>(Lcom/threed/jpct/GLSLShader$UniformMap;)V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    .line 145
    iput-object v4, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    .line 146
    iput-object v4, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    .line 150
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    .line 151
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpFloats:[F

    .line 152
    new-instance v0, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v0}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 153
    iput-object v4, p0, Lcom/threed/jpct/GLSLShader;->attributes:Ljava/util/Map;

    .line 172
    iput-object p2, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    .line 175
    const-string v0, "attribute vec4 tangent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    .line 177
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    .line 178
    return-void

    :cond_0
    move v0, v1

    .line 175
    goto :goto_0
.end method

.method public static addReplacement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "shaderSrc"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v0, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method private check20()V
    .locals 2

    .prologue
    .line 273
    sget v0, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 274
    const-string v0, "Shaders are not supported when using OpenGL ES 1.x!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 276
    :cond_0
    return-void
.end method

.method private checkError(Ljava/lang/String;)V
    .locals 3
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 996
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-nez v0, :cond_0

    .line 999
    return-void

    .line 997
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

    goto :goto_0
.end method

.method private createProgram(II)I
    .locals 5
    .param p1, "vertexShader2"    # I
    .param p2, "fragmentShader2"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 960
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 961
    .local v1, "program":I
    if-eqz v1, :cond_0

    .line 962
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 963
    const-string v2, "glAttachShader - vertex shader"

    invoke-direct {p0, v2}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    .line 964
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 965
    const-string v2, "glAttachShader -  fragment shader"

    invoke-direct {p0, v2}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    .line 966
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 967
    new-array v0, v3, [I

    .line 968
    .local v0, "linkStatus":[I
    const v2, 0x8b82

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 969
    aget v2, v0, v4

    if-eq v2, v3, :cond_0

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not link shader program: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 971
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 972
    const/4 v1, 0x0

    .line 975
    .end local v0    # "linkStatus":[I
    :cond_0
    return v1
.end method

.method private getHandle(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "modelViewMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    .line 420
    :goto_0
    return v0

    .line 360
    :cond_0
    const-string v0, "modelViewProjectionMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    goto :goto_0

    .line 363
    :cond_1
    const-string v0, "projectionMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    goto :goto_0

    .line 372
    :cond_2
    const-string v0, "textureMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    goto :goto_0

    .line 375
    :cond_3
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    goto :goto_0

    .line 378
    :cond_4
    const-string v0, "useColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    goto :goto_0

    .line 381
    :cond_5
    const-string v0, "additionalColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    goto :goto_0

    .line 384
    :cond_6
    const-string v0, "ambientColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 385
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    goto :goto_0

    .line 387
    :cond_7
    const-string v0, "lightCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 388
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    goto :goto_0

    .line 390
    :cond_8
    const-string v0, "lightPositions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 391
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    goto :goto_0

    .line 393
    :cond_9
    const-string v0, "diffuseColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 394
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    goto :goto_0

    .line 396
    :cond_a
    const-string v0, "specularColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 397
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    goto :goto_0

    .line 399
    :cond_b
    const-string v0, "attenuation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 400
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    goto/16 :goto_0

    .line 402
    :cond_c
    const-string v0, "fogColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 403
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    goto/16 :goto_0

    .line 405
    :cond_d
    const-string v0, "fogStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 406
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    goto/16 :goto_0

    .line 408
    :cond_e
    const-string v0, "fogEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 409
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    goto/16 :goto_0

    .line 411
    :cond_f
    const-string v0, "textureCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 412
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    goto/16 :goto_0

    .line 414
    :cond_10
    const-string v0, "blendingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 415
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    goto/16 :goto_0

    .line 417
    :cond_11
    const-string v0, "shininess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 418
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    goto/16 :goto_0

    .line 420
    :cond_12
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private getLocation(Ljava/lang/String;)I
    .locals 1
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 756
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 288
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    .line 289
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "modelViewProjectionMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    .line 290
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "projectionMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    .line 292
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "color"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    .line 293
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "tangent"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    .line 294
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 301
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "modelViewMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    .line 302
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "textureMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    .line 303
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "alpha"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    .line 304
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "useColors"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    .line 305
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "additionalColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    .line 306
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "ambientColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    .line 308
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "lightCount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    .line 309
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "lightPositions"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    .line 310
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "diffuseColors"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    .line 311
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "specularColors"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    .line 312
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "attenuation"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    .line 314
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "fogColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    .line 315
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "fogStart"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    .line 316
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "fogEnd"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    .line 318
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "textureCount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    .line 319
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "blendingMode"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    .line 321
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "shininess"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    .line 323
    iget v1, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    if-ne v1, v5, :cond_0

    .line 324
    const-string v1, "Missing attribute \'position\' in vertex shader"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handles of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->program:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->activate()V

    .line 331
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 336
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->program:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "texture"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 298
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->program:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "textureUnit"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    aget v1, v1, v0

    if-eq v1, v5, :cond_3

    .line 333
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    aget v1, v1, v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 331
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private loadProgram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "vs"    # Ljava/lang/String;
    .param p2, "fs"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 929
    sget-boolean v3, Lcom/threed/jpct/Config;->glForceHighPrecision:Z

    if-eqz v3, :cond_0

    .line 930
    move-object v1, p2

    .line 931
    .local v1, "ofs":Ljava/lang/String;
    const-string v3, "precision mediump"

    const-string v4, "precision highp"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "precision lowp"

    const-string v5, "precision highp"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 932
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 933
    const-string v3, "Shader forced to use high precision!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 937
    .end local v1    # "ofs":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    .line 938
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    .line 940
    const-string v3, "Compiling shader program!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 942
    const v3, 0x8b31

    invoke-direct {p0, v3, p1}, Lcom/threed/jpct/GLSLShader;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 944
    .local v2, "vertexShader":I
    if-nez v2, :cond_1

    .line 945
    const-string v3, "load shader"

    invoke-direct {p0, v3}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    .line 946
    const-string v3, "Failed to load and compile vertex shaders!"

    invoke-static {v3, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 949
    :cond_1
    const v3, 0x8b30

    invoke-direct {p0, v3, p2}, Lcom/threed/jpct/GLSLShader;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 951
    .local v0, "fragmentShader":I
    if-nez v0, :cond_2

    .line 952
    const-string v3, "load shader"

    invoke-direct {p0, v3}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    .line 953
    const-string v3, "Failed to load and compile fragment shaders!"

    invoke-static {v3, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 955
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/threed/jpct/GLSLShader;->createProgram(II)I

    move-result v3

    iput v3, p0, Lcom/threed/jpct/GLSLShader;->program:I

    .line 957
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 979
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 980
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 981
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 982
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 983
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 984
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 985
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not compile shader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 987
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 988
    const/4 v1, 0x0

    .line 991
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method private set(Ljava/lang/String;FZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "staticy"    # Z

    .prologue
    const/4 v3, 0x1

    .line 799
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v1

    .line 801
    .local v1, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 802
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 803
    .local v0, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 804
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 805
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v0}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 806
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 810
    .end local v0    # "handle":I
    :cond_0
    if-nez v1, :cond_1

    .line 811
    new-instance v1, Lcom/threed/jpct/GLSLShader$Uniform;

    .end local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-direct {v1, v3, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 812
    .restart local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    iput-boolean v3, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 813
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1, v1}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 815
    :cond_1
    invoke-virtual {v1, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(F)V

    .line 816
    invoke-virtual {v1, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 818
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_2

    .line 819
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 821
    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "staticy"    # Z

    .prologue
    const/4 v3, 0x0

    .line 774
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v1

    .line 776
    .local v1, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 777
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 778
    .local v0, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 779
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 780
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v0}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 781
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 785
    .end local v0    # "handle":I
    :cond_0
    if-nez v1, :cond_1

    .line 786
    new-instance v1, Lcom/threed/jpct/GLSLShader$Uniform;

    .end local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-direct {v1, v3, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 787
    .restart local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 788
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1, v1}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 790
    :cond_1
    invoke-virtual {v1, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(I)V

    .line 791
    invoke-virtual {v1, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 793
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_2

    .line 794
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 796
    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "staticy"    # Z

    .prologue
    const/4 v3, 0x4

    .line 853
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v1

    .line 855
    .local v1, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 856
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 857
    .local v0, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 858
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 859
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v0}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 860
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 864
    .end local v0    # "handle":I
    :cond_0
    if-nez v1, :cond_1

    .line 865
    new-instance v1, Lcom/threed/jpct/GLSLShader$Uniform;

    .end local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-direct {v1, v3, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 866
    .restart local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 867
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1, v1}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 869
    :cond_1
    invoke-virtual {v1, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(Lcom/threed/jpct/SimpleVector;)V

    .line 870
    invoke-virtual {v1, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 872
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_2

    .line 873
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 875
    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/nio/FloatBuffer;
    .param p3, "staticy"    # Z

    .prologue
    const/4 v3, 0x3

    .line 903
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v1

    .line 905
    .local v1, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 906
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 907
    .local v0, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 909
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v0}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 910
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 914
    .end local v0    # "handle":I
    :cond_0
    if-nez v1, :cond_1

    .line 915
    new-instance v1, Lcom/threed/jpct/GLSLShader$Uniform;

    .end local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-direct {v1, v3, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 916
    .restart local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 917
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1, v1}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 919
    :cond_1
    invoke-virtual {v1, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(Ljava/nio/FloatBuffer;)V

    .line 920
    invoke-virtual {v1, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 922
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_2

    .line 923
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 925
    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;[FZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F
    .param p3, "staticy"    # Z

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZZ)V

    .line 825
    return-void
.end method

.method private set(Ljava/lang/String;[FZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F
    .param p3, "staticy"    # Z
    .param p4, "asFloatArray"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x2

    .line 828
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v1

    .line 830
    .local v1, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 831
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 832
    .local v0, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 833
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    if-eqz p4, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 834
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v0}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 835
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 839
    .end local v0    # "handle":I
    :cond_0
    if-nez v1, :cond_1

    .line 840
    new-instance v1, Lcom/threed/jpct/GLSLShader$Uniform;

    .end local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-eqz p4, :cond_4

    :goto_1
    invoke-direct {v1, v3, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 841
    .restart local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 842
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1, v1}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 844
    :cond_1
    invoke-virtual {v1, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue([F)V

    .line 845
    invoke-virtual {v1, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 847
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_2

    .line 848
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 850
    :cond_2
    return-void

    .restart local v0    # "handle":I
    :cond_3
    move v2, v4

    .line 833
    goto :goto_0

    .end local v0    # "handle":I
    .end local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    :cond_4
    move v3, v4

    .line 840
    goto :goto_1
.end method

.method private set(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [Lcom/threed/jpct/SimpleVector;
    .param p3, "staticy"    # Z

    .prologue
    const/4 v3, 0x5

    .line 878
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v1

    .line 880
    .local v1, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 881
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 882
    .local v0, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 883
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 884
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v2, v0}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 885
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 889
    .end local v0    # "handle":I
    :cond_0
    if-nez v1, :cond_1

    .line 890
    new-instance v1, Lcom/threed/jpct/GLSLShader$Uniform;

    .end local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-direct {v1, v3, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 891
    .restart local v1    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 892
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2, p1, v1}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 894
    :cond_1
    invoke-virtual {v1, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue([Lcom/threed/jpct/SimpleVector;)V

    .line 895
    invoke-virtual {v1, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 897
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_2

    .line 898
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 900
    :cond_2
    return-void
.end method

.method public static setShaderLocator(Lcom/threed/jpct/ShaderLocator;)V
    .locals 0
    .param p0, "locator"    # Lcom/threed/jpct/ShaderLocator;

    .prologue
    .line 217
    sput-object p0, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    .line 218
    return-void
.end method

.method private setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V
    .locals 11
    .param p1, "v"    # Lcom/threed/jpct/GLSLShader$Uniform;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 706
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getHandle()I

    move-result v3

    .line 707
    .local v3, "location":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 753
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getType()I

    move-result v5

    .line 712
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 714
    :pswitch_0
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getIntValue()I

    move-result v7

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 717
    :pswitch_1
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getFloatValue()F

    move-result v7

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    .line 720
    :pswitch_2
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getFloatArrayValue()[F

    move-result-object v1

    .line 721
    .local v1, "f":[F
    array-length v7, v1

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 723
    :pswitch_3
    aget v7, v1, v8

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    .line 726
    :pswitch_4
    aget v7, v1, v8

    aget v8, v1, v9

    invoke-static {v3, v7, v8}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto :goto_0

    .line 729
    :pswitch_5
    aget v7, v1, v8

    aget v8, v1, v9

    aget v9, v1, v10

    invoke-static {v3, v7, v8, v9}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_0

    .line 732
    :pswitch_6
    aget v7, v1, v8

    aget v8, v1, v9

    aget v9, v1, v10

    const/4 v10, 0x3

    aget v10, v1, v10

    invoke-static {v3, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto :goto_0

    .line 737
    .end local v1    # "f":[F
    :pswitch_7
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getVectorValue()Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    .line 738
    .local v6, "vs":Lcom/threed/jpct/SimpleVector;
    iget v7, v6, Lcom/threed/jpct/SimpleVector;->x:F

    iget v8, v6, Lcom/threed/jpct/SimpleVector;->y:F

    iget v9, v6, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v3, v7, v8, v9}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_0

    .line 741
    .end local v6    # "vs":Lcom/threed/jpct/SimpleVector;
    :pswitch_8
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getMatrixValue()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 742
    .local v4, "m":Ljava/nio/FloatBuffer;
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 743
    invoke-static {v3, v9, v8, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 746
    .end local v4    # "m":Ljava/nio/FloatBuffer;
    :pswitch_9
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getVectorArrayValue()[F

    move-result-object v0

    .line 747
    .local v0, "data":[F
    array-length v7, v0

    div-int/lit8 v7, v7, 0x3

    invoke-static {v3, v7, v0, v8}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    goto :goto_0

    .line 750
    .end local v0    # "data":[F
    :pswitch_a
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getFloatArrayValue()[F

    move-result-object v2

    .line 751
    .local v2, "fa":[F
    array-length v7, v2

    invoke-static {v3, v7, v2, v8}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 721
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "m"    # Lcom/threed/jpct/Matrix;
    .param p2, "floatBuffer64"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 760
    if-nez p2, :cond_0

    .line 761
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    .line 765
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 766
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->transformToGL()V

    .line 767
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpFloats:[F

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v0

    .line 768
    .local v0, "dump":[F
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 769
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 770
    return-object p2

    .line 763
    .end local v0    # "dump":[F
    :cond_0
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method activate()V
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 634
    return-void
.end method

.method activate(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->checkContext(I)V

    .line 629
    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->activate()V

    .line 630
    return-void
.end method

.method checkContext(I)V
    .locals 2
    .param p1, "contextId"    # I

    .prologue
    .line 655
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    if-eq v0, p1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->recompile()V

    .line 658
    :cond_0
    iput p1, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    .line 659
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    .line 646
    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->dispose()V

    .line 1004
    return-void
.end method

.method getAttributeHandle(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->attributes:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 340
    const-string v2, "Creating attribute/handle mapping!"

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 341
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->attributes:Ljava/util/Map;

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->attributes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 344
    .local v1, "handle":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 345
    iget v2, p0, Lcom/threed/jpct/GLSLShader;->program:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "handi":I
    if-gez v0, :cond_1

    .line 347
    const/4 v0, -0x1

    .line 349
    :cond_1
    invoke-static {v0}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->attributes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle for attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 353
    .end local v0    # "handi":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getProgram()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    return v0
.end method

.method preInit()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->check20()V

    .line 281
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/threed/jpct/GLSLShader;->loadProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->init()V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    .line 285
    :cond_0
    return-void
.end method

.method recompile()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "Recompiling shader because of context change!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/threed/jpct/GLSLShader;->loadProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->init()V

    .line 652
    return-void
.end method

.method public setFloatArrayUniform(Ljava/lang/String;[F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [F

    .prologue
    .line 606
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZZ)V

    .line 607
    return-void
.end method

.method public setStaticFloatArrayUniform(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [F

    .prologue
    const/4 v0, 0x1

    .line 486
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZZ)V

    .line 487
    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 458
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;FZ)V

    .line 459
    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 444
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;IZ)V

    .line 445
    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "m"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/threed/jpct/GLSLShader;->toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V

    .line 529
    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;Z)V

    .line 515
    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [F

    .prologue
    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZ)V

    .line 473
    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vals"    # [Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 500
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;Z)V

    .line 501
    return-void
.end method

.method public setUniform(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;FZ)V

    .line 555
    return-void
.end method

.method public setUniform(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;IZ)V

    .line 542
    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "m"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 619
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    .line 620
    .local v0, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader$Uniform;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 621
    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader$Uniform;->getMatrixValue()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/threed/jpct/GLSLShader;->toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/threed/jpct/GLSLShader;->toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V

    goto :goto_0
.end method

.method public setUniform(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;Z)V

    .line 568
    return-void
.end method

.method public setUniform(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [F

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZ)V

    .line 594
    return-void
.end method

.method public setUniform(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # [Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;Z)V

    .line 581
    return-void
.end method

.method update()V
    .locals 7

    .prologue
    .line 662
    iget v5, p0, Lcom/threed/jpct/GLSLShader;->program:I

    if-gtz v5, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-boolean v5, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    if-eqz v5, :cond_3

    .line 667
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    if-nez v5, :cond_2

    .line 668
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    .line 670
    :cond_2
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 671
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    iget-object v6, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v6}, Lcom/threed/jpct/GLSLShader$UniformMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 672
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 679
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 682
    .end local v1    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v5}, Lcom/threed/jpct/GLSLShader$UniformMap;->values()Ljava/util/List;

    move-result-object v4

    .line 683
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/GLSLShader$Uniform;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 685
    .local v0, "end":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v0, :cond_6

    .line 697
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 698
    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_9

    .line 701
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    goto :goto_0

    .line 673
    .end local v0    # "end":I
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/GLSLShader$Uniform;>;"
    :cond_4
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 674
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v5, v2}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v3

    .line 675
    .local v3, "v":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-virtual {v3}, Lcom/threed/jpct/GLSLShader$Uniform;->hasHandle()Z

    move-result v5

    if-nez v5, :cond_5

    .line 676
    invoke-direct {p0, v2}, Lcom/threed/jpct/GLSLShader;->getLocation(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 672
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 686
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    .restart local v0    # "end":I
    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/GLSLShader$Uniform;>;"
    :cond_6
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/GLSLShader$Uniform;

    .line 687
    .restart local v3    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-direct {p0, v3}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 689
    invoke-virtual {v3}, Lcom/threed/jpct/GLSLShader$Uniform;->isStaticUniform()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 690
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    if-nez v5, :cond_7

    .line 691
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    .line 693
    :cond_7
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    invoke-virtual {v3}, Lcom/threed/jpct/GLSLShader$Uniform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 699
    .end local v3    # "v":Lcom/threed/jpct/GLSLShader$Uniform;
    :cond_9
    iget-object v6, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/threed/jpct/GLSLShader$UniformMap;->remove(Ljava/lang/String;)V

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
