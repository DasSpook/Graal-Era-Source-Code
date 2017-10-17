.class public final Lcom/fabzat/shop/utils/ui/FZHorizontalPager;
.super Landroid/view/ViewGroup;
.source "FZHorizontalPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;,
        Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static dD:Ljava/lang/Integer;


# instance fields
.field private dE:I

.field private dF:I

.field private dG:I

.field private dH:Z

.field private dI:F

.field private dJ:F

.field private dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

.field private dL:I

.field private dM:I

.field private dN:Landroid/widget/Scroller;

.field private dO:I

.field private dP:I

.field private dQ:Landroid/view/VelocityTracker;

.field private dR:I

.field private dS:I

.field private dT:Z

.field private dU:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

.field private dV:I

.field private dW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->LOG_TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dD:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startInit"    # I
    .param p3, "nbChild"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 73
    iput v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    .line 75
    iput-boolean v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dH:Z

    .line 80
    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    .line 83
    iput v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    .line 85
    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dR:I

    .line 86
    iput v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dS:I

    .line 87
    iput-boolean v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dT:Z

    .line 88
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->BOTH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    iput-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dU:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    .line 89
    const v0, 0x7fffffff

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dV:I

    .line 90
    iput v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dW:I

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->a(II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    .line 75
    iput-boolean v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dH:Z

    .line 80
    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    .line 83
    iput v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    .line 85
    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dR:I

    .line 86
    iput v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dS:I

    .line 87
    iput-boolean v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dT:Z

    .line 88
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->BOTH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    iput-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dU:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    .line 89
    const v0, 0x7fffffff

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dV:I

    .line 90
    iput v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dW:I

    .line 122
    const-string v0, "start_child"

    invoke-interface {p2, v3, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "nb_child"

    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->a(II)V

    .line 123
    return-void
.end method

.method private U()Landroid/view/View;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "v":Landroid/view/View;
    sget-object v1, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dD:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    return-object v0
.end method

.method private V()V
    .locals 6

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getWidth()I

    move-result v1

    .line 490
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getScrollX()I

    move-result v2

    .line 491
    .local v2, "scrollX":I
    iget v3, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    .line 492
    .local v3, "whichScreen":I
    iget v4, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    mul-int/2addr v4, v1

    sub-int v0, v2, v4

    .line 495
    .local v0, "deltaX":I
    if-gez v0, :cond_1

    iget v4, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    if-eqz v4, :cond_1

    div-int/lit8 v4, v1, 0x4

    neg-int v5, v0

    if-ge v4, v5, :cond_1

    .line 496
    add-int/lit8 v3, v3, -0x1

    .line 503
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->g(I)V

    .line 504
    return-void

    .line 499
    :cond_1
    if-lez v0, :cond_0

    iget v4, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v5

    if-eq v4, v5, :cond_0

    div-int/lit8 v4, v1, 0x4

    if-ge v4, v0, :cond_0

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private a(II)V
    .locals 5
    .param p1, "startInit"    # I
    .param p2, "nbChild"    # I

    .prologue
    .line 130
    sget-object v2, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "INIT nbSlide = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    .line 135
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x44160000    # 600.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dG:I

    .line 139
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 140
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dO:I

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dL:I

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->setNbChild(II)V

    .line 144
    return-void
.end method

.method private b(II)V
    .locals 7
    .param p1, "whichScreen"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    .line 532
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getWidth()I

    move-result v1

    mul-int v6, v0, v1

    .line 533
    .local v6, "newX":I
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 535
    .local v3, "delta":I
    if-gez p2, :cond_0

    .line 537
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x43fa0000    # 500.0f

    mul-float/2addr v4, v5

    float-to-int v5, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 543
    :goto_0
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->invalidate()V

    .line 544
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getScrollX()I

    move-result v1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private g(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    .line 513
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->b(II)V

    .line 514
    return-void
.end method

.method private h(I)V
    .locals 3
    .param p1, "screenDisplayed"    # I

    .prologue
    .line 558
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "displayScreen = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 565
    :cond_0
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    if-ge v0, p1, :cond_3

    .line 566
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dS:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 567
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dD:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 568
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->createScreen(I)V

    .line 571
    add-int/lit8 v0, p1, -0x2

    if-ltz v0, :cond_1

    .line 572
    add-int/lit8 v0, p1, -0x2

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->removeViewAt(I)V

    .line 573
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->U()Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->addView(Landroid/view/View;I)V

    .line 594
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

    iget v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    iget v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;->onExitView(ILandroid/view/View;)V

    .line 596
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;->onDisplayView(ILandroid/view/View;)V

    .line 599
    :cond_2
    iput p1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    goto :goto_0

    .line 580
    :cond_3
    if-lez p1, :cond_1

    .line 581
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dD:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 582
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->createScreen(I)V

    .line 585
    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dS:I

    if-ge v0, v1, :cond_1

    .line 586
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->removeViewAt(I)V

    .line 587
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->U()Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 409
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->scrollTo(II)V

    .line 411
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->postInvalidate()V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    if-eq v0, v3, :cond_0

    .line 414
    const/4 v0, 0x0

    iget v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    .line 416
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    invoke-direct {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->h(I)V

    .line 418
    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    goto :goto_0
.end method

.method public createScreen(I)V
    .locals 3
    .param p1, "screen"    # I

    .prologue
    .line 548
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->removeViewAt(I)V

    .line 549
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 242
    .local v0, "action":I
    const/4 v1, 0x0

    .line 244
    .local v1, "intercept":Z
    packed-switch v0, :pswitch_data_0

    .line 292
    .end local v1    # "intercept":Z
    :cond_0
    :goto_0
    return v1

    .line 247
    .restart local v1    # "intercept":Z
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 251
    .local v3, "y":F
    iget v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dV:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dW:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 261
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dI:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    int-to-float v2, v6

    .line 262
    .local v2, "xDiff":F
    iget v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dO:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_2

    .line 263
    iput v5, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dI:F

    .line 268
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dJ:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 269
    .local v4, "yDiff":I
    iget v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dO:I

    if-le v4, v6, :cond_3

    .line 270
    const/4 v6, -0x1

    iput v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    .line 274
    :cond_3
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dO:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    move v1, v5

    .line 275
    goto :goto_0

    .line 280
    .end local v2    # "xDiff":F
    .end local v3    # "y":F
    .end local v4    # "yDiff":I
    :pswitch_1
    iput v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    move v1, v6

    .line 281
    goto :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dJ:F

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dI:F

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v3

    .line 228
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 236
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, v4}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 232
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 233
    add-int/2addr v1, v2

    .line 228
    .end local v2    # "childWidth":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 180
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 181
    .local v14, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 182
    .local v15, "widthMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v15, v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ViewSwitcher can only be used in EXACTLY mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 187
    .local v11, "heightMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v11, v2, :cond_1

    .line 188
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ViewSwitcher can only be used in EXACTLY mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v8

    .line 193
    .local v8, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v8, :cond_3

    .line 197
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dH:Z

    if-eqz v2, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    mul-int/2addr v2, v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->scrollTo(II)V

    .line 199
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dH:Z

    .line 219
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dR:I

    .line 220
    return-void

    .line 194
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 193
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 202
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dR:I

    if-eq v14, v2, :cond_2

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 209
    .local v9, "display":Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 211
    .local v10, "displayWidth":I
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getCurrentScreen()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    .line 213
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dM:I

    mul-int v13, v2, v10

    .line 214
    .local v13, "newX":I
    invoke-virtual/range {p0 .. p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getScrollX()I

    move-result v2

    sub-int v5, v13, v2

    .line 216
    .local v5, "delta":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 298
    iget-boolean v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dT:Z

    if-nez v11, :cond_0

    .line 403
    :goto_0
    return v9

    .line 302
    :cond_0
    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dQ:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 303
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dQ:Landroid/view/VelocityTracker;

    .line 305
    :cond_1
    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dQ:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 308
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 310
    .local v6, "x":F
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v9, v10

    .line 403
    goto :goto_0

    .line 318
    :pswitch_0
    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_3

    .line 319
    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 323
    :cond_3
    iput v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dI:F

    .line 325
    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dN:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_2
    iput v9, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    goto :goto_1

    :cond_4
    move v9, v10

    goto :goto_2

    .line 329
    :pswitch_1
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dI:F

    sub-float v11, v6, v11

    float-to-int v7, v11

    .line 331
    .local v7, "xDiff":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dO:I

    if-le v11, v12, :cond_9

    move v8, v10

    .line 333
    .local v8, "xMoved":Z
    :goto_3
    if-eqz v8, :cond_5

    .line 335
    iput v10, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    .line 340
    :cond_5
    if-lez v7, :cond_6

    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dU:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    sget-object v12, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->RIGHT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    if-eq v11, v12, :cond_7

    .line 341
    :cond_6
    if-gez v7, :cond_8

    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dU:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    sget-object v12, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;->LEFT:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    if-ne v11, v12, :cond_8

    .line 342
    :cond_7
    iput v9, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    .line 345
    :cond_8
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    if-ne v11, v10, :cond_2

    .line 347
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dI:F

    sub-float/2addr v11, v6

    float-to-int v2, v11

    .line 348
    .local v2, "deltaX":I
    iput v6, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dI:F

    .line 349
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getScrollX()I

    move-result v3

    .line 351
    .local v3, "scrollX":I
    if-gez v2, :cond_a

    .line 352
    if-lez v3, :cond_2

    .line 353
    neg-int v11, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v11, v9}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->scrollBy(II)V

    goto :goto_1

    .end local v2    # "deltaX":I
    .end local v3    # "scrollX":I
    .end local v8    # "xMoved":Z
    :cond_9
    move v8, v9

    .line 331
    goto :goto_3

    .line 356
    .restart local v2    # "deltaX":I
    .restart local v3    # "scrollX":I
    .restart local v8    # "xMoved":Z
    :cond_a
    if-lez v2, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getWidth()I

    move-result v12

    sub-int v1, v11, v12

    .line 359
    .local v1, "availableToScroll":I
    if-lez v1, :cond_2

    .line 360
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {p0, v11, v9}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->scrollBy(II)V

    goto :goto_1

    .line 369
    .end local v1    # "availableToScroll":I
    .end local v2    # "deltaX":I
    .end local v3    # "scrollX":I
    .end local v7    # "xDiff":I
    .end local v8    # "xMoved":Z
    :pswitch_2
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    if-ne v11, v10, :cond_b

    .line 370
    iget-object v4, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dQ:Landroid/view/VelocityTracker;

    .line 371
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    iget v12, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dL:I

    int-to-float v12, v12

    invoke-virtual {v4, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 372
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    float-to-int v5, v11

    .line 374
    .local v5, "velocityX":I
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dG:I

    if-le v5, v11, :cond_c

    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    if-lez v11, :cond_c

    .line 376
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v11}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->g(I)V

    .line 386
    :goto_4
    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dQ:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_b

    .line 387
    iget-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dQ:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 388
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dQ:Landroid/view/VelocityTracker;

    .line 392
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":I
    :cond_b
    iput v9, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    goto/16 :goto_1

    .line 378
    .restart local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v5    # "velocityX":I
    :cond_c
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dG:I

    neg-int v11, v11

    if-ge v5, v11, :cond_d

    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_d

    .line 380
    iget v11, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v11}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->g(I)V

    goto :goto_4

    .line 383
    :cond_d
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->V()V

    goto :goto_4

    .line 396
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":I
    :pswitch_3
    iput v9, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dP:I

    goto/16 :goto_1

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentScreen(IZ)V
    .locals 3
    .param p1, "currentScreen"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    .line 441
    if-eqz p2, :cond_0

    .line 442
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->b(II)V

    .line 448
    :goto_0
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->invalidate()V

    .line 449
    return-void

    .line 445
    :cond_0
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dE:I

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dT:Z

    .line 157
    return-void
.end method

.method public setNbChild(II)V
    .locals 2
    .param p1, "startInit"    # I
    .param p2, "nbChild"    # I

    .prologue
    .line 148
    iput p2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dS:I

    .line 150
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 153
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->U()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->addView(Landroid/view/View;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnScreenSwitchListener(Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;I)V
    .locals 3
    .param p1, "onScreenSwitchListener"    # Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;
    .param p2, "startPos"    # I

    .prologue
    .line 458
    iput-object p1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

    .line 460
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOnScreenSwitchListener startPos = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNbChild = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iput p2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dF:I

    .line 465
    if-lez p2, :cond_0

    .line 466
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->createScreen(I)V

    .line 470
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->createScreen(I)V

    .line 473
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dS:I

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_1

    .line 474
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->createScreen(I)V

    .line 477
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->setCurrentScreen(IZ)V

    .line 480
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dK:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;

    invoke-virtual {p0, p2}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;->onDisplayView(ILandroid/view/View;)V

    .line 481
    return-void
.end method

.method public setScrollLimitOff(II)V
    .locals 0
    .param p1, "startY"    # I
    .param p2, "endY"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dV:I

    .line 161
    iput p2, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dW:I

    .line 162
    return-void
.end method

.method public setScrollWay(Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;)V
    .locals 0
    .param p1, "way"    # Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->dU:Lcom/fabzat/shop/utils/ui/FZHorizontalPager$ScrollWay;

    .line 166
    return-void
.end method
