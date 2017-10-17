.class public Lcom/threed/jpct/Light;
.super Ljava/lang/Object;
.source "Light.java"


# static fields
.field public static final LIGHT_INVISIBLE:Z = false

.field public static final LIGHT_VISIBLE:Z = true


# instance fields
.field private light:I

.field private on:Z

.field private rotCache:Lcom/threed/jpct/SimpleVector;

.field private world:Lcom/threed/jpct/World;


# direct methods
.method public constructor <init>(Lcom/threed/jpct/World;)V
    .locals 2
    .param p1, "world"    # Lcom/threed/jpct/World;

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Light;->light:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Light;->on:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    .line 26
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Light;->rotCache:Lcom/threed/jpct/SimpleVector;

    .line 36
    iput-object p1, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    .line 37
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/threed/jpct/World;->addLight(Lcom/threed/jpct/SimpleVector;FFF)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Light;->light:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Light;->on:Z

    .line 39
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iput-boolean v2, p0, Lcom/threed/jpct/Light;->on:Z

    .line 54
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/World;->setLightVisibility(IZ)V

    .line 55
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->remove(I)V

    .line 72
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/threed/jpct/Light;->light:I

    .line 73
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lcom/threed/jpct/Light;->on:Z

    .line 46
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/World;->setLightVisibility(IZ)V

    .line 47
    return-void
.end method

.method public getAttenuation()F
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightAttenuation(I)F

    move-result v0

    return v0
.end method

.method public getDiscardDistance()F
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightDiscardDistance(I)F

    move-result v0

    return v0
.end method

.method public getDistanceOverride()F
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightDistanceOverride(I)F

    move-result v0

    return v0
.end method

.method public getIntensity()Lcom/threed/jpct/SimpleVector;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightIntensity(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/World;->getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 2
    .param p1, "store"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/threed/jpct/Light;->on:Z

    return v0
.end method

.method public rotate(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 4
    .param p1, "degrees"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "pivot"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v2, p0, Lcom/threed/jpct/Light;->light:I

    iget-object v3, p0, Lcom/threed/jpct/Light;->rotCache:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v1, v2, v3}, Lcom/threed/jpct/World;->getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 227
    .local v0, "pos":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {v0, p2}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    .line 228
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->rotateX(F)V

    .line 229
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->rotateY(F)V

    .line 230
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->rotateZ(F)V

    .line 231
    invoke-virtual {v0, p2}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Light;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    .line 233
    return-void
.end method

.method public setAttenuation(F)V
    .locals 2
    .param p1, "att"    # F

    .prologue
    .line 118
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightAttenuation(IF)V

    .line 119
    return-void
.end method

.method public setDiscardDistance(F)V
    .locals 2
    .param p1, "dist"    # F

    .prologue
    .line 139
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 140
    const/high16 p1, -0x40800000    # -1.0f

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightDiscardDistance(IF)V

    .line 143
    return-void
.end method

.method public setDistanceOverride(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 166
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 167
    const/high16 p1, -0x40800000    # -1.0f

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightDistanceOverride(IF)V

    .line 170
    return-void
.end method

.method public setIntensity(FFF)V
    .locals 2
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/threed/jpct/World;->setLightIntensity(IFFF)V

    .line 98
    return-void
.end method

.method public setIntensity(Lcom/threed/jpct/SimpleVector;)V
    .locals 3
    .param p1, "inty"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 83
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/threed/jpct/Light;->setIntensity(FFF)V

    .line 84
    return-void
.end method

.method public setPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 2
    .param p1, "pos"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightPosition(ILcom/threed/jpct/SimpleVector;)V

    .line 189
    return-void
.end method
