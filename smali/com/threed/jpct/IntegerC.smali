.class Lcom/threed/jpct/IntegerC;
.super Ljava/lang/Object;
.source "IntegerC.java"


# static fields
.field private static final CACHE:[Ljava/lang/Integer;

.field private static final offset:I = 0x7d0


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/16 v1, 0xfa0

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lcom/threed/jpct/IntegerC;->CACHE:[Ljava/lang/Integer;

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/threed/jpct/IntegerC;->CACHE:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 8
    return-void

    .line 15
    :cond_0
    sget-object v1, Lcom/threed/jpct/IntegerC;->CACHE:[Ljava/lang/Integer;

    add-int/lit16 v2, v0, -0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 20
    const/16 v0, -0x7d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_0

    .line 21
    sget-object v0, Lcom/threed/jpct/IntegerC;->CACHE:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x7d0

    aget-object v0, v0, v1

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
