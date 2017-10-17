.class Lcom/quattroplay/GraalEra/QPlayActivity$8;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/quattroplay/GraalEra/util/IabHelper$OnConsumeFinishedListener;


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
    .line 630
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$8;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/quattroplay/GraalEra/util/Purchase;Lcom/quattroplay/GraalEra/util/IabResult;)V
    .locals 2
    .param p1, "purchase"    # Lcom/quattroplay/GraalEra/util/Purchase;
    .param p2, "result"    # Lcom/quattroplay/GraalEra/util/IabResult;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$8;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v0, v0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$8;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v1, "consumefailed"

    invoke-static {v0, v1, p1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$200(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$8;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v1, "consumesuccess"

    invoke-static {v0, v1, p1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$200(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V

    goto :goto_0
.end method
