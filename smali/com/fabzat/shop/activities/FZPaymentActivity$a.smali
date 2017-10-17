.class final enum Lcom/fabzat/shop/activities/FZPaymentActivity$a;
.super Ljava/lang/Enum;
.source "FZPaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/activities/FZPaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fabzat/shop/activities/FZPaymentActivity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aA:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

.field public static final enum aB:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

.field public static final enum aC:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

.field public static final enum aD:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

.field private static final synthetic aE:[Lcom/fabzat/shop/activities/FZPaymentActivity$a;

.field public static final enum az:Lcom/fabzat/shop/activities/FZPaymentActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    const-string v1, "AUTHORIZED"

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->az:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    .line 40
    new-instance v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    const-string v1, "REFUSED"

    invoke-direct {v0, v1, v3}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aA:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    .line 41
    new-instance v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aB:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    .line 42
    new-instance v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aC:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    .line 43
    new-instance v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aD:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->az:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aA:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aB:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aC:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aD:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aE:[Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZPaymentActivity$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    return-object v0
.end method

.method public static values()[Lcom/fabzat/shop/activities/FZPaymentActivity$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aE:[Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
