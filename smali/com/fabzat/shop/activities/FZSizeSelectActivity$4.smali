.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$4;
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
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$4;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$4;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0, v1, v1}, Lcom/fabzat/shop/activities/FZIntroDialog;->launch(Lcom/fabzat/shop/activities/FZActivity;ZZ)V

    .line 219
    return-void
.end method
