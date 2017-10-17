.class Lcom/fabzat/shop/activities/FZProductSelectActivity$2;
.super Ljava/lang/Object;
.source "FZProductSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/model/FZResourceState;)V
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
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZProductSelectActivity$2;)Lcom/fabzat/shop/activities/FZProductSelectActivity;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    const-string v2, "fz_label_information"

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    const-string v2, "fz_alert_msg_errorShopProductsConnectRequired"

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    const v1, 0x104000a

    new-instance v2, Lcom/fabzat/shop/activities/FZProductSelectActivity$2$1;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity$2$1;-><init>(Lcom/fabzat/shop/activities/FZProductSelectActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 271
    return-void
.end method
