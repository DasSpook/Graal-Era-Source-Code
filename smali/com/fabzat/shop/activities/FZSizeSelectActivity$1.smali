.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity;
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
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    iget-object v1, v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->b(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->b(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;->setObjectTouched(Z)V

    .line 355
    :cond_0
    return-void
.end method
