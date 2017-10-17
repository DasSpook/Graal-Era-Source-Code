.class Lcom/quattroplay/GraalEra/QPlayActivity$6;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$6;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/quattroplay/GraalEra/util/IabResult;Lcom/quattroplay/GraalEra/util/Inventory;)V
    .locals 5
    .param p1, "result"    # Lcom/quattroplay/GraalEra/util/IabResult;
    .param p2, "inventory"    # Lcom/quattroplay/GraalEra/util/Inventory;

    .prologue
    .line 569
    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$6;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v3, v3, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-nez v3, :cond_1

    .line 591
    :cond_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {p1}, Lcom/quattroplay/GraalEra/util/IabResult;->isFailure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 575
    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v2

    .line 576
    .local v2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/quattroplay/GraalEra/util/Purchase;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 578
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quattroplay/GraalEra/util/Purchase;

    .line 579
    .local v1, "purchase":Lcom/quattroplay/GraalEra/util/Purchase;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 577
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gralatspack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    invoke-virtual {v1}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "coinspack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    invoke-virtual {v1}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vippack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    invoke-virtual {v1}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 586
    :cond_4
    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$6;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v3, v3, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$6;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v4, v4, Lcom/quattroplay/GraalEra/QPlayActivity;->mConsumeFinishedListener:Lcom/quattroplay/GraalEra/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v3, v1, v4}, Lcom/quattroplay/GraalEra/util/IabHelper;->consumeAsync(Lcom/quattroplay/GraalEra/util/Purchase;Lcom/quattroplay/GraalEra/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 587
    :catch_0
    move-exception v3

    goto :goto_1
.end method
