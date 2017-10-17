.class public Lcom/fabzat/shop/adapters/FZCartAdapter;
.super Ljava/lang/Object;
.source "FZCartAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private _shop:Lcom/fabzat/shop/model/FZContainer;

.field private bL:Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;

.field private bM:Landroid/view/LayoutInflater;

.field private bN:Landroid/view/ViewGroup;

.field private bO:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private bP:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private bQ:Lcom/fabzat/shop/model/FZCart;

.field private bR:Lcom/fabzat/shop/model/FZCartLine;

.field private bS:Lcom/fabzat/shop/model/FZLocaleInfo;

.field private bT:D

.field private bU:Z

.field private bV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bL:Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bM:Landroid/view/LayoutInflater;

    .line 63
    const-string v0, "fz_cart_container"

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bN:Landroid/view/ViewGroup;

    .line 64
    const-string v0, "fz_price_total"

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bO:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 65
    const-string v0, "fz_price_shipping"

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bP:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 67
    new-instance v0, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v0}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bS:Lcom/fabzat/shop/model/FZLocaleInfo;

    .line 69
    invoke-static {}, Lcom/fabzat/shop/manager/FZCartManager;->getCart()Lcom/fabzat/shop/model/FZCart;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    .line 70
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bU:Z

    .line 74
    return-void
.end method

.method private E()D
    .locals 5

    .prologue
    .line 145
    const-wide/16 v1, 0x0

    .line 147
    .local v1, "price":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 150
    return-wide v1

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->e(I)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private F()V
    .locals 11

    .prologue
    .line 231
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    .line 233
    iget-boolean v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bU:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bV:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bV:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZCart;->hasOneProduct()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    iget-wide v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    iget-wide v4, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    iget-object v6, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZContainer;->getPercentShippingDiscount()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bP:Lcom/fabzat/shop/utils/ui/FZTextView;

    iget-wide v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    invoke-static {v3, v4}, Lcom/fabzat/shop/utils/FZTools;->formatPrice(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_1
    return-void

    .line 235
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZCartLine;

    .line 236
    .local v1, "line":Lcom/fabzat/shop/model/FZCartLine;
    invoke-direct {p0, v1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->a(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZComponentComputed;

    move-result-object v0

    .line 237
    .local v0, "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    iget-wide v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponentComputed;->getShippingPriceId()I

    move-result v8

    iget-object v9, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bS:Lcom/fabzat/shop/model/FZLocaleInfo;

    iget-object v10, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bV:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/fabzat/shop/model/FZContainer;->getTiersShipping(ILcom/fabzat/shop/model/FZLocaleInfo;Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    goto :goto_0

    .line 247
    .end local v0    # "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    .end local v1    # "line":Lcom/fabzat/shop/model/FZCartLine;
    :cond_2
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bP:Lcom/fabzat/shop/utils/ui/FZTextView;

    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_context:Landroid/content/Context;

    const-string v4, "fz_label_selectAddress"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private G()V
    .locals 7

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->F()V

    .line 255
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->H()V

    .line 257
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->E()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    add-double v1, v3, v5

    .line 258
    .local v1, "totalAll":D
    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZTools;->formatPrice(D)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "price":Ljava/lang/String;
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bO:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-virtual {v3, v0}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bO:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTag(Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method private H()V
    .locals 17

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v13}, Lcom/fabzat/shop/model/FZCart;->hasOneProduct()Z

    move-result v13

    if-nez v13, :cond_0

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->I()I

    move-result v7

    .line 308
    .local v7, "minPosition":I
    if-ltz v7, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v13, v7}, Lcom/fabzat/shop/model/FZCart;->get(I)Lcom/fabzat/shop/model/FZCartLine;

    move-result-object v6

    .line 311
    .local v6, "line":Lcom/fabzat/shop/model/FZCartLine;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/fabzat/shop/adapters/FZCartAdapter;->a(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZComponentComputed;

    move-result-object v2

    .line 313
    .local v2, "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZComponentComputed;->getPublicPriceId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bS:Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-virtual {v15}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/fabzat/shop/model/FZContainer;->getPrice(ILjava/lang/String;)D

    move-result-wide v11

    .line 314
    .local v11, "singlePrice":D
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double v13, v11, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v15}, Lcom/fabzat/shop/model/FZContainer;->getPercentDiscount()I

    move-result v15

    int-to-double v15, v15

    mul-double v3, v13, v15

    .line 315
    .local v3, "discount":D
    sub-double v13, v11, v3

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    int-to-double v15, v15

    mul-double/2addr v15, v11

    add-double v8, v13, v15

    .line 317
    .local v8, "price":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bN:Landroid/view/ViewGroup;

    invoke-virtual {v13, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, "child":Landroid/view/View;
    const-string v13, "fz_cart_line_price_old"

    invoke-static {v13}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 319
    .local v5, "discountTv":Lcom/fabzat/shop/utils/ui/FZTextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/fabzat/shop/adapters/FZCartAdapter;->b(Lcom/fabzat/shop/model/FZCartLine;)D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/fabzat/shop/utils/FZTools;->formatPrice(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/fabzat/shop/utils/ui/FZTextView;->setVisibility(I)V

    .line 322
    const-string v13, "fz_cart_line_price_new"

    invoke-static {v13}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 323
    .local v10, "priceTv":Lcom/fabzat/shop/utils/ui/FZTextView;
    invoke-static {v8, v9}, Lcom/fabzat/shop/utils/FZTools;->formatPrice(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTag(Ljava/lang/Object;)V

    .line 325
    const-string v13, "fz_bar_discount"

    invoke-static {v13}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    .end local v3    # "discount":D
    .end local v5    # "discountTv":Lcom/fabzat/shop/utils/ui/FZTextView;
    .end local v6    # "line":Lcom/fabzat/shop/model/FZCartLine;
    .end local v7    # "minPosition":I
    .end local v8    # "price":D
    .end local v10    # "priceTv":Lcom/fabzat/shop/utils/ui/FZTextView;
    .end local v11    # "singlePrice":D
    :cond_0
    return-void
.end method

.method private I()I
    .locals 12

    .prologue
    .line 338
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 339
    .local v3, "min":D
    const/4 v5, -0x1

    .line 340
    .local v5, "position":I
    const/4 v1, 0x0

    .line 343
    .local v1, "count":I
    iget-object v8, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v8}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 357
    return v5

    .line 343
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/model/FZCartLine;

    .line 345
    .local v2, "line":Lcom/fabzat/shop/model/FZCartLine;
    invoke-direct {p0, v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->a(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZComponentComputed;

    move-result-object v0

    .line 346
    .local v0, "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    iget-object v9, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponentComputed;->getPublicPriceId()I

    move-result v10

    iget-object v11, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bS:Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-virtual {v11}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/fabzat/shop/model/FZContainer;->getPrice(ILjava/lang/String;)D

    move-result-wide v6

    .line 348
    .local v6, "price":D
    cmpg-double v9, v6, v3

    if-gez v9, :cond_1

    .line 350
    move-wide v3, v6

    .line 351
    move v5, v1

    .line 354
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZComponentComputed;
    .locals 2
    .param p1, "line"    # Lcom/fabzat/shop/model/FZCartLine;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZCartLine;->getCompId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZContainer;->getComponentComputed(I)Lcom/fabzat/shop/model/FZComponentComputed;

    move-result-object v0

    return-object v0
.end method

.method private a(IZ)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "create"    # Z

    .prologue
    const/16 v11, 0x8

    .line 84
    if-eqz p2, :cond_0

    .line 85
    iget-object v8, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bM:Landroid/view/LayoutInflater;

    const-string v9, "fz_cart_line"

    invoke-static {v9}, Lcom/fabzat/shop/utils/FZTools;->getLayout(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bN:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    :cond_0
    iget-object v8, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v8, p1}, Lcom/fabzat/shop/model/FZCart;->get(I)Lcom/fabzat/shop/model/FZCartLine;

    move-result-object v3

    .line 88
    .local v3, "line":Lcom/fabzat/shop/model/FZCartLine;
    iget-object v8, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bN:Landroid/view/ViewGroup;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "child":Landroid/view/View;
    const-string v8, "fz_cart_line_image"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/utils/ui/FZImage;

    .line 92
    .local v2, "image":Lcom/fabzat/shop/utils/ui/FZImage;
    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZImage;->isLoaded()Z

    move-result v8

    if-nez v8, :cond_1

    .line 93
    new-instance v8, Lcom/fabzat/shop/utils/FZImageCache;

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCartLine;->getImgPreview()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/fabzat/shop/utils/FZImageCache;-><init>(Lcom/fabzat/shop/utils/ui/FZImage;Ljava/lang/String;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/fabzat/shop/utils/FZImageCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :cond_1
    const-string v8, "fz_cart_line_desc"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 98
    .local v1, "desc":Lcom/fabzat/shop/utils/ui/FZTextView;
    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCartLine;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const-string v8, "fz_cart_line_quantity"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 102
    .local v7, "quantity":Lcom/fabzat/shop/utils/ui/FZTextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-direct {p0, v3}, Lcom/fabzat/shop/adapters/FZCartAdapter;->b(Lcom/fabzat/shop/model/FZCartLine;)D

    move-result-wide v4

    .line 106
    .local v4, "linePrice":D
    const-string v8, "fz_cart_line_price_new"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 107
    .local v6, "price":Lcom/fabzat/shop/utils/ui/FZTextView;
    invoke-static {v4, v5}, Lcom/fabzat/shop/utils/FZTools;->formatPrice(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTag(Ljava/lang/Object;)V

    .line 111
    const-string v8, "fz_cart_line_price_old"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const-string v8, "fz_bar_discount"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const-string v8, "fz_btn_container"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    const-string v8, "fz_btn_plus"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const-string v8, "fz_btn_minus"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private b(Lcom/fabzat/shop/model/FZCartLine;)D
    .locals 6
    .param p1, "line"    # Lcom/fabzat/shop/model/FZCartLine;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->a(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZComponentComputed;

    move-result-object v0

    .line 205
    .local v0, "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponentComputed;->getPublicPriceId()I

    move-result v4

    iget-object v5, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bS:Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-virtual {v5}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fabzat/shop/model/FZContainer;->getPrice(ILjava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method private e(I)D
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 214
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bN:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "child":Landroid/view/View;
    const-string v1, "fz_cart_line_price_new"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public getCart()Lcom/fabzat/shop/model/FZCart;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    return-object v0
.end method

.method public getCartPrice()D
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->E()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceShippingBase()D
    .locals 8

    .prologue
    .line 179
    const-wide/16 v1, 0x0

    .line 181
    .local v1, "p":D
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    return-wide v1

    .line 181
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCartLine;

    .line 182
    .local v0, "line":Lcom/fabzat/shop/model/FZCartLine;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getShippingUnitPrice()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    goto :goto_0
.end method

.method public getPriceTotalBase()D
    .locals 8

    .prologue
    .line 166
    const-wide/16 v1, 0x0

    .line 168
    .local v1, "p":D
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    return-wide v1

    .line 168
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCartLine;

    .line 169
    .local v0, "line":Lcom/fabzat/shop/model/FZCartLine;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getUnitPrice()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    goto :goto_0
.end method

.method public getShippingPrice()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bT:D

    return-wide v0
.end method

.method public getTotalAll()D
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bO:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasOneProduct()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCart;->hasOneProduct()Z

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 400
    packed-switch p2, :pswitch_data_0

    .line 424
    :goto_0
    :pswitch_0
    return-void

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bR:Lcom/fabzat/shop/model/FZCartLine;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZCart;->substractCartLine(Lcom/fabzat/shop/model/FZCartLine;)Z

    .line 407
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCart;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bL:Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;

    invoke-interface {v0}, Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;->onCartEmpty()V

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->setLayout()V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 367
    .local v0, "main":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 369
    .local v1, "position":I
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v2, v1}, Lcom/fabzat/shop/model/FZCart;->get(I)Lcom/fabzat/shop/model/FZCartLine;

    move-result-object v2

    iput-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bR:Lcom/fabzat/shop/model/FZCartLine;

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "fz_btn_plus"

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 374
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bR:Lcom/fabzat/shop/model/FZCartLine;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZCartLine;->add()V

    .line 387
    :goto_0
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bL:Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bL:Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;

    invoke-interface {v2}, Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;->onCartChange()V

    .line 390
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->a(IZ)V

    .line 391
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->G()V

    .line 393
    :goto_1
    return-void

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bR:Lcom/fabzat/shop/model/FZCartLine;

    invoke-virtual {v2, v3}, Lcom/fabzat/shop/model/FZCart;->isLastLine(Lcom/fabzat/shop/model/FZCartLine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_context:Landroid/content/Context;

    const-string v3, "fz_alert_msg_removeFromCart"

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, p0}, Lcom/fabzat/shop/utils/FZTools;->showConfirmDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bR:Lcom/fabzat/shop/model/FZCartLine;

    invoke-virtual {v2, v3}, Lcom/fabzat/shop/model/FZCart;->substractCartLine(Lcom/fabzat/shop/model/FZCartLine;)Z

    goto :goto_0
.end method

.method public setCountryCode(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZContainer;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bV:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setLayout()V
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bN:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 274
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCart;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCart;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->G()V

    .line 281
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 277
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->a(IZ)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setShippingIsValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bU:Z

    .line 220
    return-void
.end method

.method public updatePrice()V
    .locals 7

    .prologue
    .line 287
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bQ:Lcom/fabzat/shop/model/FZCart;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->G()V

    .line 294
    return-void

    .line 287
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZCartLine;

    .line 289
    .local v1, "line":Lcom/fabzat/shop/model/FZCartLine;
    invoke-direct {p0, v1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->a(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZComponentComputed;

    move-result-object v0

    .line 290
    .local v0, "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponentComputed;->getShippingPriceId()I

    move-result v4

    iget-object v5, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bS:Lcom/fabzat/shop/model/FZLocaleInfo;

    iget-object v6, p0, Lcom/fabzat/shop/adapters/FZCartAdapter;->bV:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/fabzat/shop/model/FZContainer;->getTiersShipping(ILcom/fabzat/shop/model/FZLocaleInfo;Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/fabzat/shop/model/FZCartLine;->setShippingUnitPrice(D)V

    goto :goto_0
.end method
