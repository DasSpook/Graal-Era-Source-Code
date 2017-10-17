.class Lcom/quattroplay/GraalEra/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/util/IabHelper;ZLjava/util/List;Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->this$0:Lcom/quattroplay/GraalEra/util/IabHelper;

    iput-boolean p2, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$listener:Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 616
    new-instance v3, Lcom/quattroplay/GraalEra/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/quattroplay/GraalEra/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 617
    .local v3, "result":Lcom/quattroplay/GraalEra/util/IabResult;
    const/4 v1, 0x0

    .line 619
    .local v1, "inv":Lcom/quattroplay/GraalEra/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->this$0:Lcom/quattroplay/GraalEra/util/IabHelper;

    iget-boolean v6, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/quattroplay/GraalEra/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/quattroplay/GraalEra/util/Inventory;
    :try_end_0
    .catch Lcom/quattroplay/GraalEra/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 625
    :goto_0
    iget-object v5, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->this$0:Lcom/quattroplay/GraalEra/util/IabHelper;

    invoke-virtual {v5}, Lcom/quattroplay/GraalEra/util/IabHelper;->flagEndAsync()V

    .line 627
    move-object v4, v3

    .line 628
    .local v4, "result_f":Lcom/quattroplay/GraalEra/util/IabResult;
    move-object v2, v1

    .line 629
    .local v2, "inv_f":Lcom/quattroplay/GraalEra/util/Inventory;
    iget-object v5, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->this$0:Lcom/quattroplay/GraalEra/util/IabHelper;

    iget-boolean v5, v5, Lcom/quattroplay/GraalEra/util/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$listener:Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 630
    iget-object v5, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;-><init>(Lcom/quattroplay/GraalEra/util/IabHelper$2;Lcom/quattroplay/GraalEra/util/IabResult;Lcom/quattroplay/GraalEra/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 636
    :cond_0
    return-void

    .line 621
    .end local v2    # "inv_f":Lcom/quattroplay/GraalEra/util/Inventory;
    .end local v4    # "result_f":Lcom/quattroplay/GraalEra/util/IabResult;
    :catch_0
    move-exception v0

    .line 622
    .local v0, "ex":Lcom/quattroplay/GraalEra/util/IabException;
    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/util/IabException;->getResult()Lcom/quattroplay/GraalEra/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method
