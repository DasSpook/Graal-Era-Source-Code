.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity;->z()V
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
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->g(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->initLayout()V

    .line 401
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->k(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/adapters/FZWheelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->l(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/adapters/FZWheelAdapter;->setPrices(Ljava/util/List;)V

    .line 402
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->updateViewPositions()V

    .line 404
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->g(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->render()V

    .line 405
    return-void
.end method
