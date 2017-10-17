.class Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$1;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;)V
    .locals 0

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$1;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$1;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$1;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1332
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$1;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    invoke-direct {v1, v2}, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;-><init>(Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1333
    return-void
.end method
