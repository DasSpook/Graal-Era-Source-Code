.class public Lcom/tapjoy/TapjoyDisplayAd;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;,
        Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;,
        Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Banner Ad"

.field private static bannerHeight:I

.field private static bannerWidth:I

.field private static displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

.field private static displayAdSize:Ljava/lang/String;

.field public static displayAdURLParams:Ljava/util/Map;
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

.field private static htmlData:Ljava/lang/String;

.field private static lastCurrencyID:Ljava/lang/String;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field private activityContext:Landroid/app/Activity;

.field adView:Landroid/view/View;

.field private autoRefresh:Z

.field elapsed_time:J

.field lastAd:Landroid/graphics/Bitmap;

.field resumeTimer:Ljava/util/Timer;

.field timer:Ljava/util/Timer;

.field webView:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "640x100"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyDisplayAd;->setDisplayAdSize(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->activityContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->lastCurrencyID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoyDisplayAdNotifier;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->htmlData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 27
    sput-object p0, Lcom/tapjoy/TapjoyDisplayAd;->htmlData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerWidth:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/tapjoy/TapjoyDisplayAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->autoRefresh:Z

    return v0
.end method

.method public static getHtmlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->htmlData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public enableAutoRefresh(Z)V
    .locals 0
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyDisplayAd;->autoRefresh:Z

    .line 138
    return-void
.end method

.method public getBannerAdSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAdSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 148
    const-string v0, "Banner Ad"

    const-string v1, "Get Banner Ad"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 150
    return-void
.end method

.method public getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currencyID"    # Ljava/lang/String;
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    const/4 v5, 0x1

    .line 161
    const-string v0, "Banner Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Banner Ad, currencyID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sput-object p3, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .line 165
    if-nez p1, :cond_1

    .line 167
    const-string v0, "Banner Ad"

    const-string v1, "getDisplayAd must take an Activity context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    const-string v1, "getDisplayAd must take an Activity context"

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd;->activityContext:Landroid/app/Activity;

    .line 178
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyDisplayAd$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDisplayAd$1;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    sput-object p2, Lcom/tapjoy/TapjoyDisplayAd;->lastCurrencyID:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/util/Map;

    .line 191
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/util/Map;

    const-string v1, "size"

    sget-object v2, Lcom/tapjoy/TapjoyDisplayAd;->displayAdSize:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/util/Map;

    const-string v1, "currency_id"

    invoke-static {v0, v1, p2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    new-instance v0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;-><init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "display_ad.html?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/util/Map;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getDisplayAdSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdSize:Ljava/lang/String;

    return-object v0
.end method

.method public setBannerAdSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setDisplayAdSize(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setDisplayAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 71
    sput-object p1, Lcom/tapjoy/TapjoyDisplayAd;->displayAdSize:Ljava/lang/String;

    .line 73
    const-string v0, "320x50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/16 v0, 0x140

    sput v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerWidth:I

    .line 76
    const/16 v0, 0x32

    sput v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerHeight:I

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "640x100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const/16 v0, 0x280

    sput v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerWidth:I

    .line 82
    const/16 v0, 0x64

    sput v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerHeight:I

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "768x90"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/16 v0, 0x300

    sput v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerWidth:I

    .line 88
    const/16 v0, 0x5a

    sput v0, Lcom/tapjoy/TapjoyDisplayAd;->bannerHeight:I

    goto :goto_0
.end method
