.class Lcom/quattroplay/GraalEra/QPlayActivity$5;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/quattroplay/GraalEra/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->initGooglePlay()Z
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
    .line 547
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$5;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/quattroplay/GraalEra/util/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/quattroplay/GraalEra/util/IabResult;

    .prologue
    .line 554
    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/quattroplay/GraalEra/util/IabResult;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Lcom/quattroplay/GraalEra/Natives;->onGooglePlayInitialized(Z)V

    .line 557
    :cond_0
    invoke-virtual {p1}, Lcom/quattroplay/GraalEra/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$5;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v0, v0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$5;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v0, v0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$5;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v1, v1, Lcom/quattroplay/GraalEra/QPlayActivity;->mGotInventoryListener:Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/quattroplay/GraalEra/util/IabHelper;->queryInventoryAsync(Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 559
    :cond_1
    return-void
.end method
