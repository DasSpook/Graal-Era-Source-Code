.class Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;
.super Ljava/lang/Object;
.source "FZWheelSelecter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/utils/ui/FZWheelSelecter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/utils/ui/FZWheelSelecter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-static {}, Lcom/fabzat/shop/utils/FZTools;->isPriorToHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->onScrollChanged(IIII)V

    .line 305
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 272
    invoke-static {}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->Z()Ljava/lang/String;

    move-result-object v7

    const-string v8, "onScrollStateChanged"

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v7, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-static {v7}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->a(Lcom/fabzat/shop/utils/ui/FZWheelSelecter;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p2, :cond_0

    .line 276
    iget-object v7, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v7}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 277
    .local v1, "middleY":I
    iget-object v7, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->a(Lcom/fabzat/shop/utils/ui/FZWheelSelecter;I)V

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v7}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getChildCount()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 296
    .end local v0    # "i":I
    .end local v1    # "middleY":I
    :cond_0
    return-void

    .line 282
    .restart local v0    # "i":I
    .restart local v1    # "middleY":I
    :cond_1
    iget-object v7, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v7, v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 284
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 285
    .local v6, "viewY":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 286
    .local v5, "viewHeight":I
    if-le v6, v1, :cond_3

    sub-int v2, v1, v6

    .line 288
    .local v2, "offset":I
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v5, :cond_2

    .line 290
    iget-object v7, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v7}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/fabzat/shop/adapters/FZWheelAdapter;

    invoke-virtual {v7, v4}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->getViewPosition(Landroid/view/View;)I

    move-result v3

    .line 291
    .local v3, "pos":I
    iget-object v7, p0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter$1;->ez:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    div-int/lit8 v8, v5, 0x2

    sub-int v8, v1, v8

    invoke-virtual {v7, v3, v8}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setSelectionFromTop(II)V

    .line 280
    .end local v3    # "pos":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "offset":I
    :cond_3
    sub-int v2, v6, v1

    goto :goto_1
.end method
