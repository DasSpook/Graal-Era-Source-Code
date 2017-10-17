.class Lcom/fabzat/shop/activities/FZPaymentActivity$1;
.super Ljava/lang/Object;
.source "FZPaymentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ay:Lcom/fabzat/shop/activities/FZPaymentActivity;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZPaymentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity$1;->ay:Lcom/fabzat/shop/activities/FZPaymentActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity$1;->ay:Lcom/fabzat/shop/activities/FZPaymentActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Lcom/fabzat/shop/activities/FZPaymentActivity;)V

    .line 137
    return-void
.end method
