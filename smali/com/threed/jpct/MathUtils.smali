.class Lcom/threed/jpct/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final calcCross([FFFFFFF)V
    .locals 3
    .param p0, "res"    # [F
    .param p1, "oneX"    # F
    .param p2, "oneY"    # F
    .param p3, "oneZ"    # F
    .param p4, "twoX"    # F
    .param p5, "twoY"    # F
    .param p6, "twoZ"    # F

    .prologue
    .line 16
    const/4 v0, 0x0

    mul-float v1, p2, p6

    mul-float v2, p3, p5

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 17
    const/4 v0, 0x1

    mul-float v1, p3, p4

    mul-float v2, p1, p6

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 18
    const/4 v0, 0x2

    mul-float v1, p1, p5

    mul-float v2, p2, p4

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 19
    return-void
.end method

.method static final calcCross([F[F[F)V
    .locals 6
    .param p0, "res"    # [F
    .param p1, "one"    # [F
    .param p2, "two"    # [F

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    aget v0, p1, v4

    aget v1, p2, v5

    mul-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v3

    .line 11
    aget v0, p1, v5

    aget v1, p2, v3

    mul-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v4

    .line 12
    aget v0, p1, v3

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v5

    .line 13
    return-void
.end method

.method static final calcDot(FFFFFF)F
    .locals 2
    .param p0, "oneX"    # F
    .param p1, "oneY"    # F
    .param p2, "oneZ"    # F
    .param p3, "twoX"    # F
    .param p4, "twoY"    # F
    .param p5, "twoZ"    # F

    .prologue
    .line 30
    mul-float v0, p0, p3

    mul-float v1, p1, p4

    add-float/2addr v0, v1

    mul-float v1, p2, p5

    add-float/2addr v0, v1

    return v0
.end method

.method static final calcDot(FFF[F)F
    .locals 2
    .param p0, "oneX"    # F
    .param p1, "oneY"    # F
    .param p2, "oneZ"    # F
    .param p3, "two"    # [F

    .prologue
    .line 26
    const/4 v0, 0x0

    aget v0, p3, v0

    mul-float/2addr v0, p0

    const/4 v1, 0x1

    aget v1, p3, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p3, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method static final calcDot([F[F)F
    .locals 4
    .param p0, "one"    # [F
    .param p1, "two"    # [F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
