.class Lcom/quattroplay/GraalEra/QPlayActivity$7;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/quattroplay/GraalEra/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 608
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$7;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/quattroplay/GraalEra/util/IabResult;Lcom/quattroplay/GraalEra/util/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/quattroplay/GraalEra/util/IabResult;
    .param p2, "purchase"    # Lcom/quattroplay/GraalEra/util/Purchase;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$7;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v0, v0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-nez v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/quattroplay/GraalEra/util/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 613
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$7;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v1, "alreadyowned"

    invoke-static {v0, v1, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$200(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {p1}, Lcom/quattroplay/GraalEra/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$7;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v1, "failed"

    invoke-static {v0, v1, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$200(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V

    goto :goto_0

    .line 616
    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$7;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v1, "success"

    invoke-static {v0, v1, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$200(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V

    .line 619
    :try_start_0
    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gralatspack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coinspack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vippack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$7;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v0, v0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$7;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v1, v1, Lcom/quattroplay/GraalEra/QPlayActivity;->mConsumeFinishedListener:Lcom/quattroplay/GraalEra/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, p2, v1}, Lcom/quattroplay/GraalEra/util/IabHelper;->consumeAsync(Lcom/quattroplay/GraalEra/util/Purchase;Lcom/quattroplay/GraalEra/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0
.end method
