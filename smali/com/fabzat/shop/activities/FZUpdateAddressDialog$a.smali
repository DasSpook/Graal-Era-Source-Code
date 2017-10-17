.class final enum Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;
.super Ljava/lang/Enum;
.source "FZUpdateAddressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/activities/FZUpdateAddressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bA:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

.field public static final enum bB:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

.field private static final synthetic bC:[Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bA:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    .line 45
    new-instance v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bB:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    sget-object v1, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bA:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bB:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bC:[Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    return-object v0
.end method

.method public static values()[Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bC:[Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
