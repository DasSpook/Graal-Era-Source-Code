.class public Lcom/fabzat/shop/model/FZSizePrice;
.super Ljava/lang/Object;
.source "FZSizePrice.java"


# static fields
.field public static CURRENCY:Ljava/lang/String;


# instance fields
.field df:D

.field x:D

.field y:D

.field z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZSizePrice;->x:D

    .line 17
    iput-wide p3, p0, Lcom/fabzat/shop/model/FZSizePrice;->y:D

    .line 18
    iput-wide p5, p0, Lcom/fabzat/shop/model/FZSizePrice;->z:D

    .line 19
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "price"    # D

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZSizePrice;->x:D

    .line 23
    iput-wide p3, p0, Lcom/fabzat/shop/model/FZSizePrice;->y:D

    .line 24
    iput-wide p5, p0, Lcom/fabzat/shop/model/FZSizePrice;->z:D

    .line 25
    iput-wide p7, p0, Lcom/fabzat/shop/model/FZSizePrice;->df:D

    .line 26
    return-void
.end method


# virtual methods
.method public getPrice()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZSizePrice;->df:D

    return-wide v0
.end method

.method public getPriceStr()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    const-string v0, "%.2f %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/fabzat/shop/model/FZSizePrice;->df:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/fabzat/shop/model/FZSizePrice;->CURRENCY:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZSizePrice;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZSizePrice;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZSizePrice;->z:D

    return-wide v0
.end method

.method public setPrice(D)V
    .locals 0
    .param p1, "price"    # D

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZSizePrice;->df:D

    .line 62
    return-void
.end method

.method public setX(D)V
    .locals 0
    .param p1, "x"    # D

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZSizePrice;->x:D

    .line 34
    return-void
.end method

.method public setY(D)V
    .locals 0
    .param p1, "y"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZSizePrice;->y:D

    .line 42
    return-void
.end method

.method public setZ(D)V
    .locals 0
    .param p1, "z"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZSizePrice;->z:D

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    const-string v0, "Price=%f  x=%f y=%f z=%f"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/fabzat/shop/model/FZSizePrice;->df:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/fabzat/shop/model/FZSizePrice;->x:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/fabzat/shop/model/FZSizePrice;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/fabzat/shop/model/FZSizePrice;->z:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
