.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "arg0"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 169
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->h(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/activities/FZWaitDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->h(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/activities/FZWaitDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fabzat/shop/activities/FZWaitDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v6

    .line 174
    invoke-virtual {v6}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v5

    .line 179
    .local v5, "shop":Lcom/fabzat/shop/model/FZContainer;
    new-instance v4, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v4}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    .line 180
    .local v4, "local":Lcom/fabzat/shop/model/FZLocaleInfo;
    new-instance v3, Lcom/fabzat/shop/model/FZCartLine;

    invoke-direct {v3}, Lcom/fabzat/shop/model/FZCartLine;-><init>()V

    .line 182
    .local v3, "line":Lcom/fabzat/shop/model/FZCartLine;
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->i(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/fabzat/shop/model/FZCartLine;->setCompId(I)V

    .line 184
    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCartLine;->getCompId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fabzat/shop/model/FZContainer;->getComponentComputed(I)Lcom/fabzat/shop/model/FZComponentComputed;

    move-result-object v0

    .line 186
    .local v0, "comp":Lcom/fabzat/shop/model/FZComponentComputed;
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZ3DResource;->getForPreview()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fabzat/shop/model/FZCartLine;->setImgPreview(Ljava/lang/String;)V

    .line 187
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZ3DResource;->get3DModelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fabzat/shop/model/FZCartLine;->setLabel(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3, v11}, Lcom/fabzat/shop/model/FZCartLine;->setQuantity(I)V

    .line 189
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponentComputed;->getPublicPriceId()I

    move-result v6

    invoke-virtual {v4}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/fabzat/shop/model/FZContainer;->getPrice(ILjava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/fabzat/shop/model/FZCartLine;->setUnitPrice(D)V

    .line 190
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZ3DResource;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fabzat/shop/model/FZCartLine;->setArchiveFile(Ljava/lang/String;)V

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v7}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZCartLine;->getArchiveFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fabzat/shop/model/FZCartLine;->setArchivePathFile(Ljava/lang/String;)V

    .line 193
    const-string v6, "%.1f %s"

    new-array v7, v12, [Ljava/lang/Object;

    .line 194
    iget-object v8, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v8}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->j(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    .line 195
    iget-object v8, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    const-string v9, "fz_label_cart_line_size_unit"

    invoke-virtual {v8, v9}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 193
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "desc2":Ljava/lang/String;
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    iget-object v7, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    const-string v8, "fz_label_cart_line_description"

    invoke-virtual {v7, v8}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 198
    iget-object v9, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v9}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fabzat/shop/model/FZ3DResource;->get3DModelName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 199
    iget-object v9, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    const-string v10, "fz_label_size"

    invoke-virtual {v9, v10}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 200
    aput-object v2, v8, v12

    .line 197
    invoke-virtual {v6, v7, v8}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "desc":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/fabzat/shop/model/FZCartLine;->setDescription(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/fabzat/shop/manager/FZCartManager;->getCart()Lcom/fabzat/shop/model/FZCart;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/fabzat/shop/model/FZCart;->addCartLine(Lcom/fabzat/shop/model/FZCartLine;)V

    .line 207
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    const-class v9, Lcom/fabzat/shop/activities/FZCartActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x29a

    invoke-virtual {v6, v7, v8}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-virtual {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->finish()V

    goto/16 :goto_0
.end method
