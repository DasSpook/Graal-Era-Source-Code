.class final enum Lcom/fabzat/shop/activities/FZLostPassDialog$a;
.super Ljava/lang/Enum;
.source "FZLostPassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/activities/FZLostPassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fabzat/shop/activities/FZLostPassDialog$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Z:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

.field public static final enum aa:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

.field private static final synthetic ab:[Lcom/fabzat/shop/activities/FZLostPassDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    const-string v1, "REQUEST_TOKEN"

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/activities/FZLostPassDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->Z:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    .line 28
    new-instance v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    const-string v1, "UPDATE_PASS"

    invoke-direct {v0, v1, v3}, Lcom/fabzat/shop/activities/FZLostPassDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->aa:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    sget-object v1, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->Z:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->aa:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->ab:[Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZLostPassDialog$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    return-object v0
.end method

.method public static values()[Lcom/fabzat/shop/activities/FZLostPassDialog$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->ab:[Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
