.class Lcom/tapjoy/mraid/view/MraidView$TimeOut;
.super Ljava/util/TimerTask;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOut"
.end annotation


# instance fields
.field mCount:I

.field mProgress:I

.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 534
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 536
    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->mProgress:I

    .line 537
    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->mCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 541
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->getProgress()I

    move-result v1

    .line 542
    .local v1, "progress":I
    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->cancel()Z

    .line 558
    :cond_0
    :goto_0
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->mProgress:I

    .line 559
    return-void

    .line 545
    :cond_1
    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->mProgress:I

    if-ne v2, v1, :cond_0

    .line 546
    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->mCount:I

    .line 547
    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->mCount:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView$TimeOut;->cancel()Z

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MRAIDView"

    const-string v3, "error in stopLoading"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
