.class public Lcom/fabzat/shop/adapters/FZDiscountAdapter;
.super Ljava/lang/Object;
.source "FZDiscountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;
    }
.end annotation


# instance fields
.field private _activity:Lcom/fabzat/shop/activities/FZActivity;

.field private bM:Landroid/view/LayoutInflater;

.field private bW:Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;

.field private bX:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private bY:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private bZ:Landroid/view/ViewGroup;

.field private ca:Landroid/view/ViewGroup;

.field private cb:Ljava/lang/String;

.field private cc:Z


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;)V
    .locals 5
    .param p1, "activity"    # Lcom/fabzat/shop/activities/FZActivity;
    .param p2, "listener"    # Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bW:Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;

    .line 47
    iput-object p1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    .line 49
    const-string v1, "fz_discount_flag"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bX:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 50
    const-string v1, "fz_discount_promotion"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bY:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 52
    const-string v1, "fz_discount_resource_container"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->ca:Landroid/view/ViewGroup;

    .line 53
    const-string v1, "fz_discount_container"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bZ:Landroid/view/ViewGroup;

    .line 55
    const-string v1, "fz_discount_container"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bM:Landroid/view/LayoutInflater;

    .line 59
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZContainer;->getPercentDiscount()I

    move-result v0

    .line 60
    .local v0, "discount":I
    if-gtz v0, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->cc:Z

    .line 63
    iget-boolean v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->cc:Z

    if-nez v1, :cond_1

    .line 64
    const-string v1, "%d%%"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->cb:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bX:Lcom/fabzat/shop/utils/ui/FZTextView;

    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->cb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_1
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->J()V

    .line 73
    return-void

    :cond_0
    move v1, v3

    .line 60
    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bX:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-virtual {v1, v4}, Lcom/fabzat/shop/utils/ui/FZTextView;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bY:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-virtual {v1, v4}, Lcom/fabzat/shop/utils/ui/FZTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private J()V
    .locals 9

    .prologue
    .line 103
    iget-object v6, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bZ:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZTools;->spToPixels(Landroid/content/Context;I)I

    move-result v7

    sub-int v3, v6, v7

    .line 104
    .local v3, "maxWidth":I
    iget-object v6, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZTools;->spToPixels(Landroid/content/Context;I)I

    move-result v5

    .line 106
    .local v5, "px":I
    div-int v4, v3, v5

    .line 109
    .local v4, "number":I
    const/4 v6, 0x5

    if-le v4, v6, :cond_0

    .line 110
    add-int/lit8 v4, v4, -0x1

    .line 112
    :cond_0
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fabzat/shop/manager/FZResourceManager;->getResources()Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "_resources":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZ3DResource;>;"
    iget-object v6, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->ca:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 115
    if-eqz v0, :cond_1

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    if-lt v1, v4, :cond_2

    .line 127
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 119
    .restart local v1    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bM:Landroid/view/LayoutInflater;

    const-string v7, "fz_discount_image"

    invoke-static {v7}, Lcom/fabzat/shop/utils/FZTools;->getLayout(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->ca:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    iget-object v6, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->ca:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/utils/ui/FZImage;

    .line 123
    .local v2, "image":Lcom/fabzat/shop/utils/ui/FZImage;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Lcom/fabzat/shop/utils/ui/FZImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    new-instance v7, Lcom/fabzat/shop/utils/FZImageCache;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fabzat/shop/model/FZ3DResource;

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZ3DResource;->getForPreview()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v2, v6}, Lcom/fabzat/shop/utils/FZImageCache;-><init>(Lcom/fabzat/shop/utils/ui/FZImage;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v7, v6}, Lcom/fabzat/shop/utils/FZImageCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bW:Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bW:Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;

    invoke-interface {v0}, Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;->onPromoClick()V

    .line 96
    :cond_0
    return-void
.end method

.method public showDiscount(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->cc:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 83
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bX:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-virtual {v1, v0}, Lcom/fabzat/shop/utils/ui/FZTextView;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->bY:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-virtual {v1, v0}, Lcom/fabzat/shop/utils/ui/FZTextView;->setVisibility(I)V

    .line 85
    return-void

    .line 81
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
