.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$PPAThread;,
        Lcom/tapjoy/TapjoyConnectCore$ConnectThread;,
        Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyConnect"

.field private static androidID:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static bridgeVersion:Ljava/lang/String;

.field private static carrierCountryCode:Ljava/lang/String;

.field private static carrierName:Ljava/lang/String;

.field private static connectFlags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

.field private static connectionSubType:Ljava/lang/String;

.field private static connectionType:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static currencyMultiplier:F

.field private static deviceCountryCode:Ljava/lang/String;

.field private static deviceID:Ljava/lang/String;

.field private static deviceLanguage:Ljava/lang/String;

.field private static deviceLocation:Z

.field private static deviceManufacturer:Ljava/lang/String;

.field private static deviceModel:Ljava/lang/String;

.field private static deviceOSVersion:Ljava/lang/String;

.field private static deviceScreenDensity:Ljava/lang/String;

.field private static deviceScreenLayoutSize:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static hostURL:Ljava/lang/String;

.field private static lastTimeStamp:J

.field private static libraryVersion:Ljava/lang/String;

.field private static macAddress:Ljava/lang/String;

.field private static matchingPackageNames:Ljava/lang/String;

.field private static mobileCountryCode:Ljava/lang/String;

.field private static mobileNetworkCode:Ljava/lang/String;

.field private static paidAppActionID:Ljava/lang/String;

.field private static platformName:Ljava/lang/String;

.field private static plugin:Ljava/lang/String;

.field private static redirectDomain:Ljava/lang/String;

.field private static sdkType:Ljava/lang/String;

.field private static secretKey:Ljava/lang/String;

.field private static sessionID:Ljava/lang/String;

.field private static sha2DeviceID:Ljava/lang/String;

.field private static shareFacebook:Z

.field private static shareGooglePlus:Z

.field private static shareLinkedIn:Z

.field private static shareTwitter:Z

.field private static storeName:Ljava/lang/String;

.field private static storeView:Z

.field private static tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

.field private static userID:Ljava/lang/String;

.field private static videoEnabled:Z

.field private static videoIDs:Ljava/lang/String;

.field private static viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;


# instance fields
.field private appPaused:Z

.field private elapsed_time:J

.field private initialized:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 43
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 44
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 45
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    .line 46
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->bridgeVersion:Ljava/lang/String;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 67
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->deviceLocation:Z

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectionSubType:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 80
    const-string v0, "native"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 82
    const-string v0, "https://ws.tapjoyads.com/"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    .line 85
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 89
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->shareFacebook:Z

    .line 90
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->shareTwitter:Z

    .line 92
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->shareGooglePlus:Z

    .line 93
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->shareLinkedIn:Z

    .line 95
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->storeView:Z

    .line 100
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 105
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J

    .line 108
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 104
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    .line 106
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyConnectCore;->initialized:Z

    .line 171
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 172
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 175
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->init()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 182
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->sendOfflineLogs()V

    .line 185
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "user_id"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting userID to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user_id"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 191
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->initialized:Z

    .line 193
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyConnectCore;)J
    .locals 2
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-wide v0
.end method

.method static synthetic access$014(Lcom/tapjoy/TapjoyConnectCore;J)J
    .locals 2
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-wide v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Lcom/tapjoy/TapjoyConnectNotifier;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/tapjoy/TapjoyConnectCore;->getPackageNamesVerifier(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->handlePayPerActionResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static generateSessionID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1246
    const/4 v1, 0x0

    .line 1248
    .local v1, "id":Ljava/lang/String;
    const-string v2, "TapjoyConnect"

    const-string v3, "generating sessionID..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :goto_0
    return-object v1

    .line 1255
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to generate session id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1849
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardPointsVerifier(JILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "amount"    # I
    .param p3, "guid"    # Ljava/lang/String;

    .prologue
    .line 1336
    const-string v1, ""

    .line 1342
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVerifierID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1349
    :goto_0
    return-object v1

    .line 1344
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAwardPointsVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 976
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectionSubType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1054
    const-string v2, ""

    .line 1060
    .local v2, "subType":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1063
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 1066
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connection_sub_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-object v2

    .line 1069
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectionSubType error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1013
    const-string v2, ""

    .line 1019
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1022
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1024
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1031
    const-string v2, "mobile"

    .line 1035
    :goto_0
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connection_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_1
    return-object v2

    .line 1028
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :sswitch_0
    const-string v2, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    goto :goto_0

    .line 1039
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectionType error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1024
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1269
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static getFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1813
    const-string v0, ""

    .line 1815
    .local v0, "flag":Ljava/lang/String;
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 1817
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "flag":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1821
    .restart local v0    # "flag":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1822
    const-string v0, ""

    .line 1824
    :cond_1
    return-object v0
.end method

.method public static getGenericURLParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/util/Map;

    move-result-object v0

    .line 246
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_id"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    return-object v0
.end method

.method public static getHostURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1880
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getOfflineLogs()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 1583
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v2, "tapjoyOfflineLog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1584
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static getPackageNamesVerifier(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "packageNames"    # Ljava/lang/String;

    .prologue
    .line 1361
    const-string v1, ""

    .line 1367
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1374
    :goto_0
    return-object v1

    .line 1369
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getParamsWithoutAppID()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sha_2_udid"

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "sha_2_udid"

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const-string v1, "sha2_udid"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    :goto_0
    const-string v1, "publisher_user_id"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    const-string v1, "android_id"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    const-string v1, "mac_address"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    const-string v1, "device_name"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    const-string v1, "device_type"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    const-string v1, "os_version"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    const-string v1, "country_code"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    const-string v1, "language_code"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    const-string v1, "app_version"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    const-string v1, "library_version"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 281
    const-string v1, "bridge_version"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->bridgeVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 282
    const-string v1, "platform"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 283
    const-string v1, "display_multiplier"

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    const-string v1, "carrier_name"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 285
    const-string v1, "carrier_country_code"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    const-string v1, "mobile_country_code"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 287
    const-string v1, "mobile_network_code"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    const-string v1, "device_manufacturer"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    const-string v1, "screen_density"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    const-string v1, "screen_layout_size"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 293
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 294
    const-string v1, "connection_type"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionSubType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectionSubType:Ljava/lang/String;

    .line 298
    const-string v1, "connection_subtype"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectionSubType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    const-string v1, "plugin"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 301
    const-string v1, "sdk_type"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    const-string v1, "store_name"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 305
    const-string v1, "device_location"

    sget-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->deviceLocation:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    const-string v1, "share_facebook"

    sget-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareFacebook:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    const-string v1, "share_twitter"

    sget-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareTwitter:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    const-string v1, "share_googleplus"

    sget-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareGooglePlus:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 309
    const-string v1, "share_linkedin"

    sget-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareLinkedIn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 310
    const-string v1, "store_view"

    sget-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->storeView:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 314
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 316
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->generateSessionID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    .line 324
    :goto_1
    const-string v1, "session_id"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    return-object v0

    .line 268
    :cond_1
    const-string v1, "udid"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 321
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J

    goto :goto_1
.end method

.method public static getRedirectDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1834
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSha1MacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1859
    const/4 v1, 0x0

    .line 1863
    .local v1, "sha1MacAddress":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1870
    :goto_0
    return-object v1

    .line 1865
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating sha1 of macAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSha2DeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1844
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static getTimeStampAndVerifierParams()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1083
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1084
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, ""

    .line 1087
    .local v3, "verifier":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v1, v4, v6

    .line 1088
    .local v1, "time":J
    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->getVerifier(J)Ljava/lang/String;

    move-result-object v3

    .line 1090
    const-string v4, "timestamp"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1091
    const-string v4, "verifier"

    invoke-static {v0, v4, v3, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1093
    return-object v0
.end method

.method public static getURLParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 232
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 233
    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    return-object v0
.end method

.method private static getVerifier(J)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J

    .prologue
    .line 1310
    const-string v1, ""

    .line 1316
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVerifierID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1323
    :goto_0
    return-object v1

    .line 1318
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getVerifierID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1279
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1281
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 1297
    :goto_0
    return-object v0

    .line 1284
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1286
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    goto :goto_0

    .line 1289
    :cond_1
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1291
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    goto :goto_0

    .line 1296
    :cond_2
    const-string v0, "TapjoyConnect"

    const-string v1, "Error -- no valid device identifier"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVideoParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 948
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 951
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    if-eqz v1, :cond_1

    .line 955
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 956
    const-string v1, "video_offer_ids"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 964
    :cond_0
    :goto_0
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    return-object v0

    .line 961
    :cond_1
    const-string v1, "hide_videos"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static handleConnectResponse(Ljava/lang/String;)Z
    .locals 14
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 759
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 761
    .local v5, "document":Lorg/w3c/dom/Document;
    if-eqz v5, :cond_4

    .line 763
    const-string v11, "PackageNames"

    invoke-interface {v5, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-static {v11}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    .line 766
    .local v8, "nodeValue":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 768
    move-object v4, v8

    .line 769
    .local v4, "data":Ljava/lang/String;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 771
    .local v0, "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 772
    .local v3, "current":I
    const/4 v7, -0x1

    .line 776
    .local v7, "index":I
    :goto_0
    const/16 v11, 0x2c

    invoke-virtual {v4, v11, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 779
    const/4 v11, -0x1

    if-ne v7, v11, :cond_2

    .line 782
    const-string v11, "TapjoyConnect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 796
    const-string v11, ""

    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 798
    sget-object v11, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 799
    .local v2, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 802
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eq v11, v9, :cond_0

    .line 809
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 811
    const-string v11, "TapjoyConnect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MATCH: installed packageName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    sget-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 815
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 817
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    goto :goto_1

    .line 790
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v11, "TapjoyConnect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 792
    add-int/lit8 v3, v7, 0x1

    goto/16 :goto_0

    .line 823
    .end local v0    # "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "current":I
    .end local v4    # "data":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_3
    const-string v11, "Success"

    invoke-interface {v5, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-static {v11}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    .line 826
    if-eqz v8, :cond_5

    const-string v11, "true"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 836
    .end local v8    # "nodeValue":Ljava/lang/String;
    :cond_4
    :goto_2
    return v9

    .restart local v8    # "nodeValue":Ljava/lang/String;
    :cond_5
    move v9, v10

    .line 832
    goto :goto_2
.end method

.method private handlePayPerActionResponse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 848
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 850
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 852
    const-string v2, "Success"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "nodeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    const-string v2, "TapjoyConnect"

    const-string v3, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v2, 0x1

    .line 866
    .end local v1    # "nodeValue":Ljava/lang/String;
    :goto_0
    return v2

    .line 862
    .restart local v1    # "nodeValue":Ljava/lang/String;
    :cond_0
    const-string v2, "TapjoyConnect"

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .end local v1    # "nodeValue":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()Z
    .locals 29

    .prologue
    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TapjoyConnectCore;->validatePermissions()Z

    move-result v25

    if-nez v25, :cond_0

    .line 339
    const-string v25, "TapjoyConnect"

    const-string v26, "Unable to initialize TapjoySDK because required permissions are missing."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/16 v25, 0x0

    .line 712
    :goto_0
    return v25

    .line 343
    :cond_0
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 348
    .local v14, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-nez v25, :cond_1

    .line 349
    new-instance v25, Ljava/util/Hashtable;

    invoke-direct/range {v25 .. v25}, Ljava/util/Hashtable;-><init>()V

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 351
    :cond_1
    if-eqz v14, :cond_4

    .line 353
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x80

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 356
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_10

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    .line 358
    sget-object v4, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_3

    aget-object v12, v4, v9

    .line 360
    .local v12, "key":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "tapjoy."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 362
    .local v15, "obj":Ljava/lang/Object;
    if-eqz v15, :cond_2

    .line 364
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 366
    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_2

    .line 368
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Found manifest flag: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v22    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 374
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "obj":Ljava/lang/Object;
    :cond_3
    const-string v25, "TapjoyConnect"

    const-string v26, "Metadata successfully loaded"

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    :cond_4
    :goto_2
    const-string v25, "enable_logging"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_5

    const-string v25, "enable_logging"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "true"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 389
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 394
    :cond_5
    :try_start_1
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "android_id"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 397
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    if-eqz v25, :cond_6

    .line 398
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 401
    :cond_6
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 402
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v25, v0

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    .line 405
    const-string v25, "android"

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 406
    const-string v25, "android"

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 409
    sget-object v25, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 410
    sget-object v25, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 413
    sget-object v25, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 416
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 420
    const-string v25, "9.1.0"

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 421
    const-string v25, "1.0.4"

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->bridgeVersion:Ljava/lang/String;

    .line 423
    const-string v25, "https://ws.tapjoyads.com/"

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    .line 425
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v26, "phone"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 427
    .local v20, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v20, :cond_b

    .line 429
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 430
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 435
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 437
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x3

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 438
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 442
    :cond_8
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->isPermissionGranted(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v25

    if-eqz v25, :cond_18

    .line 447
    :try_start_2
    const-string v25, "debug_device_id"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_11

    const-string v25, "debug_device_id"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_11

    .line 448
    const-string v25, "debug_device_id"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 452
    :goto_3
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "deviceID: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/16 v21, 0x0

    .line 459
    .local v21, "validDeviceID":Z
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v25, :cond_12

    .line 461
    const-string v25, "TapjoyConnect"

    const-string v26, "Device id is null."

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :goto_4
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ANDROID SDK VERSION: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_a

    .line 487
    const-string v25, "TapjoyConnect"

    const-string v26, "TRYING TO GET SERIAL OF 2.3+ DEVICE..."

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TapjoyConnectCore;->getSerial()Ljava/lang/String;

    move-result-object v18

    .line 492
    .local v18, "serialID":Ljava/lang/String;
    if-nez v21, :cond_9

    .line 494
    sput-object v18, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 500
    :cond_9
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v25, :cond_15

    .line 502
    const-string v25, "TapjoyConnect"

    const-string v26, "SERIAL: Device id is null."

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v18    # "serialID":Ljava/lang/String;
    :cond_a
    :goto_5
    if-eqz v21, :cond_b

    .line 526
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 548
    .end local v21    # "validDeviceID":Z
    :cond_b
    :goto_6
    :try_start_3
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 550
    new-instance v5, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 552
    .local v5, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensity()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    .line 553
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 562
    .end local v5    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    :cond_c
    :goto_7
    :try_start_4
    const-string v25, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->isPermissionGranted(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v25

    if-eqz v25, :cond_19

    .line 566
    :try_start_5
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v26, "wifi"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/wifi/WifiManager;

    .line 568
    .local v24, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v24, :cond_d

    .line 570
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v23

    .line 572
    .local v23, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v23, :cond_d

    .line 574
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 576
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v25, :cond_d

    .line 579
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    const-string v26, ":"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 597
    .end local v23    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v24    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_d
    :goto_8
    :try_start_6
    const-string v25, "android.hardware.location"

    const-string v26, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->detectCapability(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/tapjoy/TapjoyConnectCore;->deviceLocation:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 607
    :goto_9
    :try_start_7
    const-string v25, "com.facebook."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/tapjoy/TapjoyConnectCore;->shareFacebook:Z

    .line 608
    const-string v25, "com.twitter."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/tapjoy/TapjoyConnectCore;->shareTwitter:Z

    .line 609
    const-string v25, "com.google.android.apps.plus"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/tapjoy/TapjoyConnectCore;->shareGooglePlus:Z

    .line 610
    const-string v25, "com.linkedin."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/tapjoy/TapjoyConnectCore;->shareLinkedIn:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 618
    :goto_a
    :try_start_8
    const-string v25, "store_name"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_e

    const-string v25, "store_name"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_e

    .line 620
    const-string v25, "store_name"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 623
    new-instance v19, Ljava/util/ArrayList;

    sget-object v25, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 626
    .local v19, "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 628
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Warning -- undefined STORE_NAME: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 635
    .end local v19    # "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    :try_start_9
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->detectStore(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/tapjoy/TapjoyConnectCore;->storeView:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 642
    :goto_b
    :try_start_a
    const-string v26, "TapjoyConnect"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "deviceID: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v27, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v25, "debug_device_id"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1a

    const-string v25, "debug_device_id"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1a

    const-string v25, " *debug_device_id*"

    :goto_c
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "sha2_udid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v17

    .line 647
    .local v17, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 649
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "TapjoyConnect"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ": "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_d

    .line 685
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    .line 687
    .local v6, "e":Ljava/lang/Exception;
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error initializing Tapjoy parameters.  e="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_e
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-eqz v25, :cond_1f

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1f

    .line 694
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 712
    :goto_f
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 378
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_10
    :try_start_b
    const-string v25, "TapjoyConnect"

    const-string v26, "No metadata present."

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    .line 382
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v6

    .line 384
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error reading manifest meta-data: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 450
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_11
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_3

    .line 529
    :catch_2
    move-exception v6

    .line 531
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cannot get deviceID. e: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/16 v25, 0x0

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_6

    .line 467
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v21    # "validDeviceID":Z
    :cond_12
    :try_start_e
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_13

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v26, "000000000000000"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 469
    :cond_13
    const-string v25, "TapjoyConnect"

    const-string v26, "Device id is empty or an emulator."

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 477
    :cond_14
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 478
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 508
    .restart local v18    # "serialID":Ljava/lang/String;
    :cond_15
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_16

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v26, "000000000000000"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_16

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_16

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v26, "unknown"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 510
    :cond_16
    const-string v25, "TapjoyConnect"

    const-string v26, "SERIAL: Device id is empty or an emulator."

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 518
    :cond_17
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 519
    const/16 v21, 0x1

    goto/16 :goto_5

    .line 537
    .end local v18    # "serialID":Ljava/lang/String;
    .end local v21    # "validDeviceID":Z
    :cond_18
    :try_start_f
    const-string v25, "TapjoyConnect"

    const-string v26, "*** ignore deviceID"

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 556
    :catch_3
    move-exception v6

    .line 558
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error getting screen density/dimensions/layout: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 584
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 586
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error getting device mac address: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 591
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_19
    const-string v25, "TapjoyConnect"

    const-string v26, "*** ignore macAddress"

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 599
    :catch_5
    move-exception v6

    .line 601
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error trying to detect capabilities on devicee: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 612
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 614
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error trying to detect sharing applications installed on devicee: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 637
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 639
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error trying to detect store intent on devicee: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 642
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1a
    const-string v25, ""

    goto/16 :goto_c

    .line 652
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v17    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1b
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v25, :cond_f

    .line 654
    const-string v25, "TapjoyConnect"

    const-string v26, "Connect Flags:"

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v25, "TapjoyConnect"

    const-string v26, "--------------------"

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual/range {v25 .. v25}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 658
    .local v7, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 660
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1c
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 662
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 663
    .local v10, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "TapjoyConnect"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "key: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ", value: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "sha_2_udid"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    const-string v26, "connect"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1c

    .line 668
    const-string v25, "TapjoyConnect"

    const-string v26, "WARNING -- only the Connect/Advertiser SDK can support sha_2_udid"

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    const-string v26, "sha_2_udid"

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 674
    .end local v10    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1d
    const-string v25, "debug_host_url"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1e

    const-string v25, "debug_host_url"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1e

    .line 675
    const-string v25, "debug_host_url"

    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    .line 677
    :cond_1e
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    sget-object v26, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    const-string v27, "//"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    const-string v27, "//"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v26, v26, v27

    sget-object v27, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    .line 679
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "hostURL: ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v25, "TapjoyConnect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "redirectDomain: ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v25, "TapjoyConnect"

    const-string v26, "--------------------"

    invoke-static/range {v25 .. v26}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_e

    .line 697
    .end local v7    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1f
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v25, :cond_20

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_20

    .line 699
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    goto/16 :goto_f

    .line 702
    :cond_20
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    if-eqz v25, :cond_21

    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_21

    .line 704
    sget-object v25, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    goto/16 :goto_f

    .line 709
    :cond_21
    const/16 v25, 0x0

    goto/16 :goto_0
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1554
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1555
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1557
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 1559
    const/4 v2, 0x0

    .line 1562
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static removeOfflineLog(Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1589
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tapjoyOfflineLog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1590
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1591
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1592
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1593
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 131
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 144
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .param p4, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 158
    sput-object p2, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 159
    sput-object p3, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 160
    sput-object p4, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    .line 161
    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 162
    return-void
.end method

.method public static saveOfflineLog(Ljava/lang/String;)V
    .locals 8
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1567
    move-object v1, p0

    .line 1570
    .local v1, "saveMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&original_timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&offline=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1574
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "tapjoyOfflineLog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1575
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1576
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1578
    return-void
.end method

.method public static sendOfflineLogs()V
    .locals 2

    .prologue
    .line 1598
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$2;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1625
    return-void
.end method

.method public static setHostURL(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1520
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->hostURL:Ljava/lang/String;

    .line 1521
    return-void
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1394
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 1395
    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1404
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 1405
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1416
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 1418
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1438
    return-void
.end method

.method public static setVideoEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 1457
    sput-boolean p0, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    .line 1458
    return-void
.end method

.method public static setVideoIDs(Ljava/lang/String;)V
    .locals 0
    .param p0, "ids"    # Ljava/lang/String;

    .prologue
    .line 1447
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    .line 1448
    return-void
.end method

.method private validatePermissions()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1529
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "android.permission.INTERNET"

    aput-object v6, v5, v3

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v6, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1535
    .local v2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1537
    .local v1, "permission":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tapjoy/TapjoyConnectCore;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1539
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing required permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .end local v1    # "permission":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public static viewDidClose(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1488
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1489
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewDidClose(I)V

    .line 1490
    :cond_0
    return-void
.end method

.method public static viewDidOpen(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1510
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1511
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewDidOpen(I)V

    .line 1512
    :cond_0
    return-void
.end method

.method public static viewWillClose(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1477
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1478
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewWillClose(I)V

    .line 1479
    :cond_0
    return-void
.end method

.method public static viewWillOpen(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1499
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1500
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewWillOpen(I)V

    .line 1501
    :cond_0
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 1639
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionComplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/util/Map;

    move-result-object v0

    .line 1643
    .local v0, "actionURLParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_id"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1644
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1646
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PPA URL parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$PPAThread;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$PPAThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1649
    return-void
.end method

.method public appPause()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    .line 210
    return-void
.end method

.method public appResume()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->generateSessionID()Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    .line 223
    :cond_0
    return-void
.end method

.method public callConnect()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    return-void
.end method

.method protected detectApplication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1105
    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1106
    .local v3, "pmanager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1109
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1111
    .local v0, "application":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1113
    const/4 v4, 0x1

    .line 1119
    .end local v0    # "application":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method protected detectCapability(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1161
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1162
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 1165
    .local v2, "featuresList":[Landroid/content/pm/FeatureInfo;
    move-object v0, v2

    .local v0, "arr$":[Landroid/content/pm/FeatureInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1166
    .local v1, "feature":Landroid/content/pm/FeatureInfo;
    iget-object v8, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1169
    if-nez p2, :cond_1

    .line 1189
    .end local v1    # "feature":Landroid/content/pm/FeatureInfo;
    :cond_0
    :goto_1
    return v6

    .line 1175
    .restart local v1    # "feature":Landroid/content/pm/FeatureInfo;
    :cond_1
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, p2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 1183
    goto :goto_1

    .line 1165
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "feature":Landroid/content/pm/FeatureInfo;
    :cond_3
    move v6, v7

    .line 1189
    goto :goto_1
.end method

.method protected detectSharingApplication(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1132
    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1133
    .local v3, "pmanager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v4, "sendIntent":Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1138
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1140
    .local v1, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1142
    const/4 v5, 0x1

    .line 1148
    .end local v1    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v5
.end method

.method protected detectStore(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1200
    const/4 v1, 0x0

    .line 1203
    .local v1, "detected":Z
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1204
    .local v2, "pmanager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v3, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 1210
    const-string v4, "market://details"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1211
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1214
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1215
    const/4 v1, 0x1

    .line 1229
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1237
    :cond_1
    return v1

    .line 1217
    :cond_2
    const-string v4, "gfan"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1220
    const-string v4, "com.mappn.gfan"

    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyConnectCore;->detectApplication(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1222
    :cond_3
    const-string v4, "skt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1225
    const-string v4, "com.skt.skaf.TSCINSTALL"

    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyConnectCore;->detectApplication(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 7
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2710

    .line 1663
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enablePaidAppWithActionID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 1667
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1670
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "tapjoy_elapsed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v6, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 1672
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paidApp elapsed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 1678
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1680
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1689
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 1690
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;-><init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TapjoyConnectCore$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 1802
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 7

    .prologue
    .line 985
    const/4 v3, 0x0

    .line 989
    .local v3, "serial":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.Build"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 990
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "SERIAL"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 992
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 993
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 995
    :cond_0
    const-class v4, Landroid/os/Build;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 997
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 999
    :catch_0
    move-exception v1

    .line 1001
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TapjoyConnect"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->initialized:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 875
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 876
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 878
    const-string v0, "TapjoyConnect"

    const-string v1, "Releasing core static instance."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 3
    .param p1, "multiplier"    # F

    .prologue
    .line 1791
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualCurrencyMultiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    sput p1, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 1793
    return-void
.end method

.method public setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyViewNotifier;

    .prologue
    .line 1467
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    .line 1468
    return-void
.end method
