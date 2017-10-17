.class public Lcom/fabzat/shop/model/FZComponent;
.super Ljava/lang/Object;
.source "FZComponent.java"


# instance fields
.field private componentComputed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZComponentComputed;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/util/Map;
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

.field private id:I

.field private is3DObject:Z

.field private label:Ljava/util/Map;
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

.field private orderPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentComputed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZComponentComputed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponent;->componentComputed:Ljava/util/List;

    return-object v0
.end method

.method public getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponent;->description:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fabzat/shop/model/FZComponent;->id:I

    return v0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponent;->label:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOrderPos()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fabzat/shop/model/FZComponent;->orderPos:I

    return v0
.end method

.method public isIs3DObject()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/fabzat/shop/model/FZComponent;->is3DObject:Z

    return v0
.end method

.method public setComponentComputed(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZComponentComputed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "componentComputed":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZComponentComputed;>;"
    iput-object p1, p0, Lcom/fabzat/shop/model/FZComponent;->componentComputed:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/fabzat/shop/model/FZComponent;->id:I

    .line 21
    return-void
.end method

.method public setOrderPos(I)V
    .locals 0
    .param p1, "orderPos"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/fabzat/shop/model/FZComponent;->orderPos:I

    .line 27
    return-void
.end method
