.class Lcom/fabzat/shop/activities/FZProductSelectActivity$3;
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
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$3;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$3;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    const-string v1, "fz_progressbar"

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity$3;->aR:Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->c(Lcom/fabzat/shop/activities/FZProductSelectActivity;)V

    .line 290
    return-void
.end method
