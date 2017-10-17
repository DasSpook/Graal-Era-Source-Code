.class Lcom/threed/jpct/GLSLShader$Uniform;
.super Ljava/lang/Object;
.source "GLSLShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threed/jpct/GLSLShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Uniform"
.end annotation


# static fields
.field public static final FLOAT:I = 0x1

.field public static final FLOAT_ARRAY:I = 0x2

.field public static final INT:I = 0x0

.field public static final MATRIX:I = 0x3

.field public static final SINGLE_FLOAT_ARRAY:I = 0x6

.field public static final VECTOR:I = 0x4

.field public static final VECTOR_ARRAY:I = 0x5


# instance fields
.field private fValue:F

.field private faValue:[F

.field private handle:I

.field private iValue:I

.field private mValue:Ljava/nio/FloatBuffer;

.field private name:Ljava/lang/String;

.field private sValue:Lcom/threed/jpct/SimpleVector;

.field private saData:[F

.field private staticUniform:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1091
    const/4 v0, 0x0

    const-string v1, "--tmp--"

    invoke-direct {p0, v0, v1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 1092
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput v2, p0, Lcom/threed/jpct/GLSLShader$Uniform;->type:I

    .line 1080
    iput v2, p0, Lcom/threed/jpct/GLSLShader$Uniform;->iValue:I

    .line 1081
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->fValue:F

    .line 1082
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->faValue:[F

    .line 1083
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->mValue:Ljava/nio/FloatBuffer;

    .line 1084
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->sValue:Lcom/threed/jpct/SimpleVector;

    .line 1085
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    .line 1087
    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader$Uniform;->staticUniform:Z

    .line 1088
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->name:Ljava/lang/String;

    .line 1095
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->type:I

    .line 1096
    iput-object p2, p0, Lcom/threed/jpct/GLSLShader$Uniform;->name:Ljava/lang/String;

    .line 1097
    return-void
.end method

.method static synthetic access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFloatArrayValue()[F
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->faValue:[F

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->fValue:F

    return v0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->iValue:I

    return v0
.end method

.method public getMatrixValue()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->mValue:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->type:I

    return v0
.end method

.method public getVectorArrayValue()[F
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    return-object v0
.end method

.method public getVectorValue()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->sValue:Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public hasHandle()Z
    .locals 2

    .prologue
    .line 1112
    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaticUniform()Z
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->staticUniform:Z

    return v0
.end method

.method public setHandle(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 1108
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    .line 1109
    return-void
.end method

.method public setStaticUniform(Z)V
    .locals 0
    .param p1, "staticUniform"    # Z

    .prologue
    .line 1182
    iput-boolean p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->staticUniform:Z

    .line 1183
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1120
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->type:I

    .line 1121
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1152
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->fValue:F

    .line 1153
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1148
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->iValue:I

    .line 1149
    return-void
.end method

.method public setValue(Lcom/threed/jpct/SimpleVector;)V
    .locals 0
    .param p1, "value"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->sValue:Lcom/threed/jpct/SimpleVector;

    .line 1165
    return-void
.end method

.method public setValue(Ljava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->mValue:Ljava/nio/FloatBuffer;

    .line 1161
    return-void
.end method

.method public setValue([F)V
    .locals 0
    .param p1, "value"    # [F

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->faValue:[F

    .line 1157
    return-void
.end method

.method public setValue([Lcom/threed/jpct/SimpleVector;)V
    .locals 7
    .param p1, "values"    # [Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 1168
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    if-nez v5, :cond_0

    .line 1169
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x3

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    .line 1171
    :cond_0
    array-length v2, p1

    .line 1172
    .local v2, "end":I
    const/4 v0, 0x0

    .line 1173
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v1, v0

    .end local v0    # "c":I
    .local v1, "c":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 1179
    return-void

    .line 1174
    :cond_1
    aget-object v4, p1, v3

    .line 1175
    .local v4, "v":Lcom/threed/jpct/SimpleVector;
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    iget v6, v4, Lcom/threed/jpct/SimpleVector;->x:F

    aput v6, v5, v1

    .line 1176
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    iget v6, v4, Lcom/threed/jpct/SimpleVector;->y:F

    aput v6, v5, v0

    .line 1177
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    iget v6, v4, Lcom/threed/jpct/SimpleVector;->z:F

    aput v6, v5, v1

    .line 1173
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "c":I
    .restart local v1    # "c":I
    goto :goto_0
.end method
