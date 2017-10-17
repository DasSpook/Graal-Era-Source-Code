.class public Lcom/fabzat/shop/adapters/FZWheelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FZWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/adapters/FZWheelAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private bM:Landroid/view/LayoutInflater;

.field private cd:I

.field private ce:I

.field private cf:I

.field private cg:I

.field ch:I

.field ci:I

.field cj:C

.field ck:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 47
    iput-object p1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->_context:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->bM:Landroid/view/LayoutInflater;

    .line 50
    new-instance v0, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v0}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZLocaleInfo;->getDecimalSeparator()C

    move-result v0

    iput-char v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cj:C

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cj:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ck:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 190
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 192
    const-string v1, "PADDING_STRING"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget v1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cd:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private a(ZLandroid/view/View;)V
    .locals 3
    .param p1, "selected"    # Z
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 244
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;

    .line 246
    .local v0, "wrapper":Lcom/fabzat/shop/adapters/FZWheelAdapter$a;
    iget-object v2, v0, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ch:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v2, v0, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cn:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ch:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    return-void

    .line 246
    :cond_0
    iget v1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ci:I

    goto :goto_0

    .line 247
    :cond_1
    iget v1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ci:I

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 129
    if-eqz p2, :cond_3

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;

    .line 144
    .local v3, "wrapper":Lcom/fabzat/shop/adapters/FZWheelAdapter$a;
    :goto_0
    iget v4, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ce:I

    if-lez v4, :cond_0

    .line 145
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cl:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 146
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ce:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne p1, v4, :cond_4

    .line 150
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 156
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "item":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 160
    iget-object v4, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ck:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "splitted":[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v4, v2

    if-le v4, v8, :cond_5

    .line 163
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cm:Landroid/widget/TextView;

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cn:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget v4, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cf:I

    if-lez v4, :cond_1

    .line 167
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cm:Landroid/widget/TextView;

    iget v5, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cf:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    :cond_1
    iget v4, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cg:I

    if-lez v4, :cond_2

    .line 170
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cn:Landroid/widget/TextView;

    iget v5, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cg:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    :cond_2
    :goto_2
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cl:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 179
    return-object p2

    .line 133
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "splitted":[Ljava/lang/String;
    .end local v3    # "wrapper":Lcom/fabzat/shop/adapters/FZWheelAdapter$a;
    :cond_3
    new-instance v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;

    invoke-direct {v3, p0}, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;-><init>(Lcom/fabzat/shop/adapters/FZWheelAdapter;)V

    .line 134
    .restart local v3    # "wrapper":Lcom/fabzat/shop/adapters/FZWheelAdapter$a;
    iget-object v4, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->bM:Landroid/view/LayoutInflater;

    const-string v5, "fz_price_item"

    invoke-static {v5}, Lcom/fabzat/shop/utils/FZTools;->getLayout(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 136
    const-string v4, "fz_price1"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cm:Landroid/widget/TextView;

    .line 137
    const-string v4, "fz_price2"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cn:Landroid/widget/TextView;

    .line 138
    const-string v4, "fz_price_container"

    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cl:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cl:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->_context:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZTools;->spToPixels(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_1

    .line 173
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "item":Ljava/lang/String;
    .restart local v2    # "splitted":[Ljava/lang/String;
    :cond_5
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cm:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, v3, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->cn:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getViewPadding(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;

    .line 257
    .local v0, "wrapper":Lcom/fabzat/shop/adapters/FZWheelAdapter$a;
    iget v1, v0, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->padding:I

    return v1
.end method

.method public getViewPosition(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    const-string v2, "fz_price_container"

    invoke-static {v2}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v2

    .line 219
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setColorSelected(I)V
    .locals 0
    .param p1, "_colorSelected"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ch:I

    .line 101
    return-void
.end method

.method public setColorUnselected(I)V
    .locals 0
    .param p1, "_colorUnselected"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ci:I

    .line 109
    return-void
.end method

.method public setColors(II)V
    .locals 0
    .param p1, "_colorSelected"    # I
    .param p2, "_colorUnselected"    # I

    .prologue
    .line 117
    iput p2, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ci:I

    .line 118
    iput p1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ch:I

    .line 119
    return-void
.end method

.method public setItemWidth(I)V
    .locals 7
    .param p1, "_itemWidth"    # I

    .prologue
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 69
    iput p1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->ce:I

    .line 74
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->_context:Landroid/content/Context;

    int-to-double v1, p1

    mul-double/2addr v1, v5

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZTools;->pixelsToSp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cf:I

    .line 75
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->_context:Landroid/content/Context;

    int-to-double v1, p1

    mul-double/2addr v1, v5

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZTools;->pixelsToSp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cg:I

    .line 77
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "_padding"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fabzat/shop/adapters/FZWheelAdapter;->cd:I

    .line 61
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public setPrices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZSizePrice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZSizePrice;>;"
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->clear()V

    .line 87
    const-string v1, "PADDING_STRING"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->add(Ljava/lang/Object;)V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    const-string v1, "PADDING_STRING"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->add(Ljava/lang/Object;)V

    .line 93
    return-void

    .line 89
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZSizePrice;

    .line 90
    .local v0, "p":Lcom/fabzat/shop/model/FZSizePrice;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZSizePrice;->getPriceStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSelection(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->a(ZLandroid/view/View;)V

    .line 228
    return-void
.end method

.method public setViewPadding(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "padding"    # I

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;

    .line 252
    .local v0, "wrapper":Lcom/fabzat/shop/adapters/FZWheelAdapter$a;
    iput p2, v0, Lcom/fabzat/shop/adapters/FZWheelAdapter$a;->padding:I

    .line 253
    return-void
.end method

.method public unsetSelection(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->a(ZLandroid/view/View;)V

    .line 236
    return-void
.end method
