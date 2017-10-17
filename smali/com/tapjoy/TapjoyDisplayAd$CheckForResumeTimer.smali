.class Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;
.super Ljava/util/TimerTask;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyDisplayAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForResumeTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyDisplayAd$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v5, 0x3c

    .line 232
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    .line 234
    const-string v0, "Banner Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner elapsed_time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    div-long/2addr v2, v7

    div-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    div-long/2addr v2, v7

    rem-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->cancel()Z

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v0, "Banner Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adView.isShown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "Banner Ad"

    const-string v1, "call connect"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 253
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->cancel()Z

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->cancel()Z

    goto :goto_0
.end method
