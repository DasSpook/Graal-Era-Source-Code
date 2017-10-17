.class final enum Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;
.super Ljava/lang/Enum;
.source "FZSizeSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bp:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

.field public static final enum bq:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

.field public static final enum br:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

.field private static final synthetic bs:[Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    const-string v1, "X"

    invoke-direct {v0, v1, v2, v2}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bp:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    .line 100
    new-instance v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    const-string v1, "Y"

    invoke-direct {v0, v1, v3, v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bq:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    .line 101
    new-instance v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    const-string v1, "Z"

    invoke-direct {v0, v1, v4, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->br:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    sget-object v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bp:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bq:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->br:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bs:[Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->index:I

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->index:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    return-object v0
.end method

.method public static values()[Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bs:[Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
