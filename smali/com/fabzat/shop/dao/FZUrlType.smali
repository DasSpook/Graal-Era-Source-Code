.class public final enum Lcom/fabzat/shop/dao/FZUrlType;
.super Ljava/lang/Enum;
.source "FZUrlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fabzat/shop/dao/FZUrlType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSUMER_ADD_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum CONSUMER_AUTH:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum CONSUMER_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum CONSUMER_NEW_USER:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum CONSUMER_REMOVE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum CONSUMER_UPDATE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum CONSUMER_UPDATE_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum CONSUMER_UPDATE_USER:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum ORDER_CGV:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum ORDER_NEW:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum ORDER_PAYMENT:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum ORDER_UPLOAD:Lcom/fabzat/shop/dao/FZUrlType;

.field public static final enum SHOP_INFO:Lcom/fabzat/shop/dao/FZUrlType;

.field private static final synthetic cq:[Lcom/fabzat/shop/dao/FZUrlType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_NEW_USER"

    invoke-direct {v0, v1, v3}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_NEW_USER:Lcom/fabzat/shop/dao/FZUrlType;

    .line 12
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_AUTH"

    invoke-direct {v0, v1, v4}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_AUTH:Lcom/fabzat/shop/dao/FZUrlType;

    .line 13
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_UPDATE_USER"

    invoke-direct {v0, v1, v5}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_USER:Lcom/fabzat/shop/dao/FZUrlType;

    .line 14
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_ADD_ADDRESS"

    invoke-direct {v0, v1, v6}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_ADD_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    .line 15
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_UPDATE_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    .line 16
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_REMOVE_ADDRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_REMOVE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    .line 17
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_LOST_PWD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

    .line 18
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "CONSUMER_UPDATE_LOST_PWD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

    .line 20
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "ORDER_NEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_NEW:Lcom/fabzat/shop/dao/FZUrlType;

    .line 22
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "ORDER_UPLOAD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_UPLOAD:Lcom/fabzat/shop/dao/FZUrlType;

    .line 23
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "ORDER_PAYMENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_PAYMENT:Lcom/fabzat/shop/dao/FZUrlType;

    .line 24
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "ORDER_CGV"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_CGV:Lcom/fabzat/shop/dao/FZUrlType;

    .line 26
    new-instance v0, Lcom/fabzat/shop/dao/FZUrlType;

    const-string v1, "SHOP_INFO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZUrlType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->SHOP_INFO:Lcom/fabzat/shop/dao/FZUrlType;

    .line 8
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fabzat/shop/dao/FZUrlType;

    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_NEW_USER:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_AUTH:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_USER:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_ADD_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_REMOVE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_NEW:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_UPLOAD:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_PAYMENT:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_CGV:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->SHOP_INFO:Lcom/fabzat/shop/dao/FZUrlType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fabzat/shop/dao/FZUrlType;->cq:[Lcom/fabzat/shop/dao/FZUrlType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fabzat/shop/dao/FZUrlType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fabzat/shop/dao/FZUrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/dao/FZUrlType;

    return-object v0
.end method

.method public static values()[Lcom/fabzat/shop/dao/FZUrlType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fabzat/shop/dao/FZUrlType;->cq:[Lcom/fabzat/shop/dao/FZUrlType;

    array-length v1, v0

    new-array v2, v1, [Lcom/fabzat/shop/dao/FZUrlType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
