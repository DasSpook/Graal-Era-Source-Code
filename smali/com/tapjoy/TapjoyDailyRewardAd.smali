.class public Lcom/tapjoy/TapjoyDailyRewardAd;
.super Ljava/lang/Object;
.source "TapjoyDailyRewardAd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Daily Reward"

.field private static dailyRewardNotifier:Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

.field private static htmlResponseData:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private legacyDailyRewardAdParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlResponseData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyDailyRewardAd;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDailyRewardAd;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->legacyDailyRewardAdParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    sput-object p0, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlResponseData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/tapjoy/TapjoyDailyRewardAdNotifier;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardNotifier:Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    return-object v0
.end method


# virtual methods
.method public getDailyRewardAd(Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 42
    const-string v0, "Daily Reward"

    const-string v1, "Getting Daily Reward Ad"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V

    .line 44
    return-void
.end method

.method public getDailyRewardAdLegacy(Ljava/lang/String;)V
    .locals 3
    .param p1, "currencyID"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->legacyDailyRewardAdParams:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->legacyDailyRewardAdParams:Ljava/util/Map;

    const-string v1, "currency_id"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyDailyRewardAd$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDailyRewardAd$1;-><init>(Lcom/tapjoy/TapjoyDailyRewardAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method public getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 0
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 55
    sput-object p2, Lcom/tapjoy/TapjoyDailyRewardAd;->dailyRewardNotifier:Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .line 57
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAdLegacy(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public showDailyRewardAd()V
    .locals 3

    .prologue
    .line 68
    const-string v1, "Daily Reward"

    const-string v2, "Displaying Daily Reward ad..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlResponseData:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlResponseData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyDailyRewardAdWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    const-string v1, "html"

    sget-object v2, Lcom/tapjoy/TapjoyDailyRewardAd;->htmlResponseData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "base_url"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "legacy_view"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/tapjoy/TapjoyDailyRewardAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
