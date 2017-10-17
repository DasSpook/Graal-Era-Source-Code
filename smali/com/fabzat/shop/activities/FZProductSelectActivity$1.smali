.class Lcom/fabzat/shop/activities/FZProductSelectActivity$1;
.super Ljava/lang/Object;
.source "FZProductSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZProductSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZProductSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/activities/FZProductSelectActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->b(Lcom/fabzat/shop/activities/FZProductSelectActivity;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fabzat/shop/manager/FZShopManager;->isDefined()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    new-instance v2, Lcom/fabzat/shop/activities/FZProductSelectActivity$1$1;

    invoke-direct {v2, p0, p1}, Lcom/fabzat/shop/activities/FZProductSelectActivity$1$1;-><init>(Lcom/fabzat/shop/activities/FZProductSelectActivity$1;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZTools;->retryConnection(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->b(Lcom/fabzat/shop/activities/FZProductSelectActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-static {v2}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/activities/FZProductSelectActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZ3DResource;

    .line 127
    .local v0, "resource":Lcom/fabzat/shop/model/FZ3DResource;
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-static {v1, v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/activities/FZProductSelectActivity;Lcom/fabzat/shop/model/FZ3DResource;)V

    goto :goto_0
.end method
