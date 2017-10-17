.class Lcom/tapjoy/mraid/view/MraidView$OrientationThread;
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
    name = "OrientationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1282
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1900(Lcom/tapjoy/mraid/view/MraidView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1287
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$2000(Lcom/tapjoy/mraid/view/MraidView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1293
    :cond_0
    return-void
.end method
