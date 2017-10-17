.class Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoLoadingThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1307
    const/4 v0, 0x0

    .line 1310
    .local v0, "elapsed":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1600(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1600(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1314
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    add-int/lit8 v0, v0, 0x32

    .line 1318
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 1324
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1500(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$1;-><init>(Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1335
    return-void

    .line 1321
    :catch_0
    move-exception v1

    goto :goto_0
.end method
