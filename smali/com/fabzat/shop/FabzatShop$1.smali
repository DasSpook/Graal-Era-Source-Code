.class Lcom/fabzat/shop/FabzatShop$1;
.super Ljava/lang/Object;
.source "FabzatShop.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/FabzatShop;->onStateChanged(Lcom/fabzat/shop/model/FZResourceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/fabzat/shop/FabzatShop;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/FabzatShop;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/FabzatShop$1;->g:Lcom/fabzat/shop/FabzatShop;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fabzat/shop/FabzatShop$1;->g:Lcom/fabzat/shop/FabzatShop;

    iget-object v1, p0, Lcom/fabzat/shop/FabzatShop$1;->g:Lcom/fabzat/shop/FabzatShop;

    invoke-static {v1}, Lcom/fabzat/shop/FabzatShop;->a(Lcom/fabzat/shop/FabzatShop;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/FabzatShop;->setDistantResources(Ljava/lang/String;)V

    .line 179
    return-void
.end method
