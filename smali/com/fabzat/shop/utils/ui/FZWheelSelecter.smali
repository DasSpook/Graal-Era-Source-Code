.class public Lcom/fabzat/shop/utils/ui/FZWheelSelecter;
.super Landroid/widget/ListView;
.source "FZWheelSelecter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private ch:I

.field private ci:I

.field private final eh:I

.field private final ei:I

.field private final ej:I

.field private final ek:I

.field private final el:I

.field private em:I

.field private en:Landroid/media/SoundPool;

.field private eo:I

.field private ep:Z

.field private eq:Z

.field private er:I

.field private es:Z

.field private et:I

.field private eu:I

.field private ev:Landroid/graphics/drawable/Drawable;

.field private ew:Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;

.field private ex:I

.field ey:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v3, 0x78

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eh:I

    .line 36
    const/16 v3, 0x1b

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ei:I

    .line 37
    const/16 v3, 0x154

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ej:I

    .line 38
    const/16 v3, 0x21c

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ek:I

    .line 39
    const/16 v3, 0xf0

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->el:I

    .line 41
    iput v5, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->em:I

    .line 50
    iput v5, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->er:I

    .line 70
    const/16 v3, 0xa

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ex:I

    .line 267
    new-instance v3, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;

    invoke-direct {v3, p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;-><init>(Lcom/fabzat/shop/utils/ui/FZWheelSelecter;)V

    iput-object v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ey:Landroid/widget/AbsListView$OnScrollListener;

    .line 75
    const-string v3, "FZWheelSelecter"

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->getStyleables(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 76
    .local v2, "ta":Landroid/content/res/TypedArray;
    const-string v3, "FZWheelSelecter_selectedColor"

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->getStyleable(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, -0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ch:I

    .line 77
    const-string v3, "FZWheelSelecter_unselectedColor"

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->getStyleable(Ljava/lang/String;)I

    move-result v3

    const v4, -0xff0100

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ci:I

    .line 78
    const-string v3, "FZWheelSelecter_background"

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->getStyleable(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ev:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "fz_white"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ch:I

    .line 83
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "fz_half_white"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ci:I

    .line 84
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "fz_wheel"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getDrawable(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ev:Landroid/graphics/drawable/Drawable;

    .line 87
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setVisibility(I)V

    .line 88
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    .local v1, "r":Landroid/content/res/Resources;
    iget v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ex:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 92
    .local v0, "divider":I
    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setDividerHeight(I)V

    .line 94
    iput-boolean v5, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ep:Z

    .line 95
    iput-boolean v6, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eq:Z

    .line 98
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x3

    invoke-direct {v3, v6, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->en:Landroid/media/SoundPool;

    .line 99
    iget-object v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->en:Landroid/media/SoundPool;

    const-string v4, "fz_wheel"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getRaw(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, p1, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eo:I

    .line 101
    iput-boolean v5, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->es:Z

    .line 102
    iget-object v3, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ey:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 104
    return-void
.end method

.method private X()Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y()Lcom/fabzat/shop/adapters/FZWheelAdapter;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 134
    .local v0, "a":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 135
    check-cast v0, Lcom/fabzat/shop/adapters/FZWheelAdapter;

    .line 136
    .end local v0    # "a":Landroid/widget/ListAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "a":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/fabzat/shop/utils/ui/FZWheelSelecter;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eu:I

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/utils/ui/FZWheelSelecter;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->es:Z

    return v0
.end method


# virtual methods
.method public forceLayout()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->performClick()Z

    .line 199
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->Y()Lcom/fabzat/shop/adapters/FZWheelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->notifyDataSetChanged()V

    .line 200
    return-void
.end method

.method public getMiddle()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->et:I

    return v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eu:I

    return v0
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 152
    iget-object v4, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ev:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    div-double v1, v4, v6

    .line 154
    .local v1, "ratio":D
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 155
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ev:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    div-double/2addr v4, v1

    mul-double/2addr v4, v8

    double-to-int v3, v4

    .line 157
    .local v3, "width":I
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const-wide v4, 0x3fb4545454545454L    # 0.07941176470588235

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->er:I

    .line 166
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->et:I

    .line 168
    sget-object v4, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wheel default offset = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->er:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ev:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v4}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p0, v10}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setVisibility(I)V

    .line 173
    invoke-virtual {p0, v10}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setFadingEdgeLength(I)V

    .line 174
    invoke-virtual {p0, v10}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setVerticalFadingEdgeEnabled(Z)V

    .line 176
    return-void
.end method

.method public initLayout()V
    .locals 6

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4002000000000000L    # 2.25

    div-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getDividerHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 188
    .local v0, "padding":I
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->Y()Lcom/fabzat/shop/adapters/FZWheelAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->setPadding(I)V

    .line 189
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->Y()Lcom/fabzat/shop/adapters/FZWheelAdapter;

    move-result-object v1

    const-wide v2, 0x3fd6969696969697L    # 0.35294117647058826

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->setItemWidth(I)V

    .line 191
    .end local v0    # "padding":I
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .prologue
    .line 211
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x4075400000000000L    # 340.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4080e00000000000L    # 540.0

    div-double/2addr v0, v2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->em:I

    .line 213
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    .line 215
    .local v10, "middleY":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getChildCount()I

    move-result v0

    if-lt v9, v0, :cond_0

    .line 257
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, v9}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 220
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v14, v0, 0x2

    .line 223
    .local v14, "viewY":I
    sub-int v0, v14, v10

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, v10

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 227
    .local v7, "deltaY":D
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->em:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v11, v0

    .line 229
    .local v11, "padding":I
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->er:I

    add-int/2addr v0, v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v0

    if-gt v0, v10, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    if-gt v10, v0, :cond_6

    move-object v0, v13

    .line 234
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .line 236
    .local v12, "position":I
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eu:I

    if-eq v0, v12, :cond_3

    .line 238
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ew:Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;

    if-eqz v0, :cond_1

    .line 239
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ew:Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;

    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eu:I

    if-le v12, v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0, v12}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;->onWheelPositionChange(ZI)V

    .line 241
    :cond_1
    iput v12, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eu:I

    .line 242
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->Y()Lcom/fabzat/shop/adapters/FZWheelAdapter;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->setSelection(Landroid/view/View;)V

    .line 244
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ep:Z

    if-eqz v0, :cond_3

    .line 247
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eq:Z

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->en:Landroid/media/SoundPool;

    iget v1, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eo:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 249
    :cond_2
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eq:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->eq:Z

    .line 215
    .end local v12    # "position":I
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 239
    .restart local v12    # "position":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 249
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 254
    .end local v12    # "position":I
    :cond_6
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->Y()Lcom/fabzat/shop/adapters/FZWheelAdapter;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->unsetSelection(Landroid/view/View;)V

    goto :goto_3
.end method

.method public render()V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setSelection(I)V

    .line 261
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 120
    instance-of v0, p1, Lcom/fabzat/shop/adapters/FZWheelAdapter;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/fabzat/shop/adapters/FZWheelAdapter;

    iget v1, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ch:I

    iget v2, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ci:I

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->setColors(II)V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    return-void
.end method

.method public setListener(Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ew:Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;

    .line 108
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->ep:Z

    .line 112
    return-void
.end method
