.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;)Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v1

    const-string v2, "fz_alert_msg_errorModelLoad"

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v1

    const-string v2, "fz_label_information"

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 492
    const v1, 0x104000a

    new-instance v2, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3$1;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3$1;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 502
    return-void
.end method
