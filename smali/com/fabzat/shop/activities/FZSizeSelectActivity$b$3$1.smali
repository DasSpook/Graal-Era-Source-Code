.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3$1;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bv:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3$1;->bv:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3$1;->bv:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;)Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->finish()V

    .line 497
    return-void
.end method
