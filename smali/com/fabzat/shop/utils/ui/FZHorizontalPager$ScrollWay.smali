.class public final enum Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;
.super Ljava/lang/Enum;
.source "FZHorizontalPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/utils/ui/FZHorizontalPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollWay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

.field public static final enum LEFT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

.field public static final enum RIGHT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

.field private static final synthetic dX:[Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->BOTH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    .line 44
    new-instance v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->LEFT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    .line 45
    new-instance v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->RIGHT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    sget-object v1, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->BOTH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->LEFT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->RIGHT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->dX:[Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    return-object v0
.end method

.method public static values()[Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->dX:[Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    array-length v1, v0

    new-array v2, v1, [Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
