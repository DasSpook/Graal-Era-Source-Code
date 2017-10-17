.class Lcom/fabzat/shop/activities/FZProductSelectActivity$2$1;
.super Ljava/lang/Object;
.source "FZProductSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZProductSelectActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aU:Lcom/fabzat/shop/activities/FZProductSelectActivity$2;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZProductSelectActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2$1;->aU:Lcom/fabzat/shop/activities/FZProductSelectActivity$2;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2$1;->aU:Lcom/fabzat/shop/activities/FZProductSelectActivity$2;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;->a(Lcom/fabzat/shop/activities/FZProductSelectActivity$2;)Lcom/fabzat/shop/activities/FZProductSelectActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->finish()V

    .line 267
    return-void
.end method
