.class public final enum Lcom/fabzat/shop/model/FZResourceState;
.super Ljava/lang/Enum;
.source "FZResourceState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fabzat/shop/model/FZResourceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fabzat/shop/model/FZResourceState;

.field public static final enum LOADED:Lcom/fabzat/shop/model/FZResourceState;

.field public static final enum LOADING:Lcom/fabzat/shop/model/FZResourceState;

.field public static final enum LOADING_ERROR:Lcom/fabzat/shop/model/FZResourceState;

.field public static final enum NOT_DEFINED:Lcom/fabzat/shop/model/FZResourceState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/fabzat/shop/model/FZResourceState;

    const-string v1, "NOT_DEFINED"

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/model/FZResourceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/model/FZResourceState;->NOT_DEFINED:Lcom/fabzat/shop/model/FZResourceState;

    .line 6
    new-instance v0, Lcom/fabzat/shop/model/FZResourceState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/fabzat/shop/model/FZResourceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/model/FZResourceState;->LOADING:Lcom/fabzat/shop/model/FZResourceState;

    .line 7
    new-instance v0, Lcom/fabzat/shop/model/FZResourceState;

    const-string v1, "LOADING_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/fabzat/shop/model/FZResourceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/model/FZResourceState;->LOADING_ERROR:Lcom/fabzat/shop/model/FZResourceState;

    .line 8
    new-instance v0, Lcom/fabzat/shop/model/FZResourceState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v5}, Lcom/fabzat/shop/model/FZResourceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/model/FZResourceState;->LOADED:Lcom/fabzat/shop/model/FZResourceState;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fabzat/shop/model/FZResourceState;

    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->NOT_DEFINED:Lcom/fabzat/shop/model/FZResourceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADING:Lcom/fabzat/shop/model/FZResourceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADING_ERROR:Lcom/fabzat/shop/model/FZResourceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADED:Lcom/fabzat/shop/model/FZResourceState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fabzat/shop/model/FZResourceState;->ENUM$VALUES:[Lcom/fabzat/shop/model/FZResourceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fabzat/shop/model/FZResourceState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fabzat/shop/model/FZResourceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZResourceState;

    return-object v0
.end method

.method public static values()[Lcom/fabzat/shop/model/FZResourceState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fabzat/shop/model/FZResourceState;->ENUM$VALUES:[Lcom/fabzat/shop/model/FZResourceState;

    array-length v1, v0

    new-array v2, v1, [Lcom/fabzat/shop/model/FZResourceState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
