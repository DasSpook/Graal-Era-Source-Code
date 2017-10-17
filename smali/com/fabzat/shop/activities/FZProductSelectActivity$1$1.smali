.class Lcom/fabzat/shop/activities/FZProductSelectActivity$1$1;
.super Ljava/lang/Object;
.source "FZProductSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZProductSelectActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aS:Lcom/fabzat/shop/activities/FZProductSelectActivity$1;

.field private final synthetic aT:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZProductSelectActivity$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1$1;->aS:Lcom/fabzat/shop/activities/FZProductSelectActivity$1;

    iput-object p2, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1$1;->aT:Landroid/view/View;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$1$1;->aT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 120
    return-void
.end method
