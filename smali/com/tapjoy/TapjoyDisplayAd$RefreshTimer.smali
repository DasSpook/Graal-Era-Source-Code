.class Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;
.super Ljava/util/TimerTask;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyDisplayAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyDisplayAd$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getState()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "Banner Ad"

    const-string v1, "refreshing banner ad..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v1}, Lcom/tapjoy/TapjoyDisplayAd;->access$000(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$300()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 210
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 211
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iput-object v4, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "Banner Ad"

    const-string v1, "ad is not in default state.  will try refreshing again in 60000s..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 217
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iput-object v4, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 218
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 219
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
