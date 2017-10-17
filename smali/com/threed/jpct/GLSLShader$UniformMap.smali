.class Lcom/threed/jpct/GLSLShader$UniformMap;
.super Ljava/lang/Object;
.source "GLSLShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threed/jpct/GLSLShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniformMap"
.end annotation


# instance fields
.field private keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastName:Ljava/lang/String;

.field private lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

.field private uniforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/threed/jpct/GLSLShader$Uniform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    .line 1015
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    .line 1016
    iput-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 1017
    iput-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastName:Ljava/lang/String;

    .line 1013
    return-void
.end method

.method synthetic constructor <init>(Lcom/threed/jpct/GLSLShader$UniformMap;)V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader$UniformMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1020
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    if-eqz v3, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 1032
    :goto_0
    return-object v2

    .line 1023
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1024
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 1032
    const/4 v2, 0x0

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/GLSLShader$Uniform;

    .line 1026
    .local v2, "u":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-static {v2}, Lcom/threed/jpct/GLSLShader$Uniform;->access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1027
    iput-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 1028
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastName:Ljava/lang/String;

    goto :goto_0

    .line 1024
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uniform"    # Lcom/threed/jpct/GLSLShader$Uniform;

    .prologue
    .line 1036
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1037
    .local v0, "end":I
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1038
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1045
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    :goto_1
    return-void

    .line 1039
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/GLSLShader$Uniform;

    .line 1040
    .local v2, "u":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-static {v2}, Lcom/threed/jpct/GLSLShader$Uniform;->access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1041
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1038
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1049
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1050
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1058
    :goto_1
    return-void

    .line 1051
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/GLSLShader$Uniform;

    .line 1052
    .local v2, "u":Lcom/threed/jpct/GLSLShader$Uniform;
    invoke-static {v2}, Lcom/threed/jpct/GLSLShader$Uniform;->access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1053
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1054
    iget-object v3, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1050
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/threed/jpct/GLSLShader$Uniform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    return-object v0
.end method
