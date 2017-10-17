.class public Lcom/threed/jpct/CollisionEvent;
.super Ljava/lang/Object;
.source "CollisionEvent.java"


# static fields
.field public static final ALGORITHM_ELLIPSOID:I = 0x2

.field public static final ALGORITHM_RAY:I = 0x0

.field public static final ALGORITHM_SPHERE:I = 0x1

.field private static final ALGOS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;

.field public static final TYPE_SOURCE:I = 0x1

.field public static final TYPE_TARGET:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private algorithm:I

.field private contact:Lcom/threed/jpct/SimpleVector;

.field private ids:[I

.field private obj:Lcom/threed/jpct/Object3D;

.field private source:Lcom/threed/jpct/Object3D;

.field private targets:[Lcom/threed/jpct/Object3D;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "target"

    aput-object v1, v0, v2

    const-string v1, "source"

    aput-object v1, v0, v3

    sput-object v0, Lcom/threed/jpct/CollisionEvent;->TYPES:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ray-polygon"

    aput-object v1, v0, v2

    const-string v1, "sphere-polygon"

    aput-object v1, v0, v3

    const-string v1, "ellipsoid-polygon"

    aput-object v1, v0, v4

    sput-object v0, Lcom/threed/jpct/CollisionEvent;->ALGOS:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method constructor <init>(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V
    .locals 2
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "source"    # Lcom/threed/jpct/Object3D;
    .param p3, "type"    # I
    .param p4, "algorithm"    # I
    .param p5, "targets"    # [Lcom/threed/jpct/Object3D;
    .param p6, "contact"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    .line 43
    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->source:Lcom/threed/jpct/Object3D;

    .line 45
    iput v1, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    .line 47
    iput v1, p0, Lcom/threed/jpct/CollisionEvent;->algorithm:I

    .line 49
    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->ids:[I

    .line 51
    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->targets:[Lcom/threed/jpct/Object3D;

    .line 53
    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->contact:Lcom/threed/jpct/SimpleVector;

    .line 60
    iput-object p1, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    .line 61
    iput p3, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    .line 62
    iput p4, p0, Lcom/threed/jpct/CollisionEvent;->algorithm:I

    .line 63
    iput-object p2, p0, Lcom/threed/jpct/CollisionEvent;->source:Lcom/threed/jpct/Object3D;

    .line 64
    iput-object p5, p0, Lcom/threed/jpct/CollisionEvent;->targets:[Lcom/threed/jpct/Object3D;

    .line 65
    iput-object p6, p0, Lcom/threed/jpct/CollisionEvent;->contact:Lcom/threed/jpct/SimpleVector;

    .line 66
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->algorithm:I

    return v0
.end method

.method public getFirstContact()Lcom/threed/jpct/SimpleVector;
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->contact:Lcom/threed/jpct/SimpleVector;

    goto :goto_0
.end method

.method public getObject()Lcom/threed/jpct/Object3D;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public getPolygonIDs()[I
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->ids:[I

    goto :goto_0
.end method

.method public getSource()Lcom/threed/jpct/Object3D;
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->source:Lcom/threed/jpct/Object3D;

    goto :goto_0
.end method

.method public getTargets()[Lcom/threed/jpct/Object3D;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->targets:[Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    return v0
.end method

.method setPolygonIDs([II)V
    .locals 2
    .param p1, "numbers"    # [I
    .param p2, "cnt"    # I

    .prologue
    const/4 v1, 0x0

    .line 174
    if-eqz p1, :cond_0

    .line 175
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->ids:[I

    .line 176
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->ids:[I

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/threed/jpct/CollisionEvent;->TYPES:[Ljava/lang/String;

    iget v2, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/threed/jpct/CollisionEvent;->ALGOS:[Ljava/lang/String;

    iget v2, p0, Lcom/threed/jpct/CollisionEvent;->algorithm:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
