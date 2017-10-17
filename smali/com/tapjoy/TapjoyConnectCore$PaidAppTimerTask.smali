.class Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;
.super Ljava/util/TimerTask;
.source "TapjoyConnectCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaidAppTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TapjoyConnectCore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyConnectCore;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyConnectCore$1;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 723
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    const-wide/16 v3, 0x2710

    invoke-static {v2, v3, v4}, Lcom/tapjoy/TapjoyConnectCore;->access$014(Lcom/tapjoy/TapjoyConnectCore;J)J

    .line 725
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elapsed_time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->access$000(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->access$000(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v4

    div-long/2addr v4, v8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->access$000(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v4

    div-long/2addr v4, v8

    rem-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$100()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 728
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 729
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tapjoy_elapsed_time"

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->access$000(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 730
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->access$000(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 735
    const-string v2, "TapjoyConnect"

    const-string v3, "timer done..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$200()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 740
    const-string v2, "TapjoyConnect"

    const-string v3, "Calling PPA actionComplete..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->cancel()Z

    .line 747
    :cond_1
    return-void
.end method
