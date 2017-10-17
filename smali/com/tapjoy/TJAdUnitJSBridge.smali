.class public Lcom/tapjoy/TJAdUnitJSBridge;
.super Ljava/lang/Object;
.source "TJAdUnitJSBridge.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TJAdUnitJSBridge"


# instance fields
.field public allowRedirect:Z

.field private bannerView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field public customClose:Z

.field public didLaunchOtherActivity:Z

.field private eventData:Lcom/tapjoy/TJEventData;

.field private jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field public otherActivityCallbackID:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private self:Lcom/tapjoy/TJAdUnitJSBridge;

.field public shouldClose:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/tapjoy/TJEventData;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkit/WebView;
    .param p3, "e"    # Lcom/tapjoy/TJEventData;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;

    .line 64
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 66
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 68
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 81
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "creating AdUnit/JS Bridge"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    .line 85
    iput-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->self:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 88
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    .line 90
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Error: webView is NULL"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/tapjoy/TJWebViewJSInterface;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJAdUnitJSBridge$1;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;)V

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJWebViewJSInterface;-><init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceNotifier;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    .line 129
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v2, "AndroidJavascriptInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->self:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private downloadFileFromURL(Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 509
    const/4 v4, 0x0

    .line 512
    .local v4, "file":Ljava/io/File;
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "ext":Ljava/lang/String;
    const/4 v6, 0x0

    .line 520
    .local v6, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 521
    .local v5, "fileURL":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 524
    iget-object v8, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "share_temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 526
    .local v7, "output":Ljava/io/OutputStream;
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 527
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 528
    .local v1, "bytesRead":I
    :goto_0
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 530
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v5    # "fileURL":Ljava/net/URL;
    .end local v7    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 545
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    iget-object v8, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "share_temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 546
    .restart local v4    # "file":Ljava/io/File;
    return-object v4

    .line 535
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "fileURL":Ljava/net/URL;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 536
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 538
    :catch_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public alert(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 139
    const-string v8, "TJAdUnitJSBridge"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alert_method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v7, ""

    .line 141
    .local v7, "title":Ljava/lang/String;
    const-string v6, ""

    .line 142
    .local v6, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .line 146
    .local v2, "buttons":Lorg/json/JSONArray;
    :try_start_0
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 147
    const-string v8, "message"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    const-string v8, "buttons"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 156
    :goto_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 158
    .local v3, "dialog":Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 160
    :cond_0
    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v8, v11

    invoke-virtual {p0, p2, v8}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :goto_1
    return-void

    .line 150
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :catch_0
    move-exception v4

    .line 152
    .local v4, "e":Ljava/lang/Exception;
    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v8, v11

    invoke-virtual {p0, p2, v8}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 171
    packed-switch v5, :pswitch_data_0

    .line 181
    const/4 v1, -0x1

    .line 187
    .local v1, "buttonType":I
    :goto_3
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v9, Lcom/tapjoy/TJAdUnitJSBridge$2;

    invoke-direct {v9, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$2;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 174
    .end local v1    # "buttonType":I
    :pswitch_0
    const/4 v1, -0x2

    .line 175
    .restart local v1    # "buttonType":I
    goto :goto_3

    .line 177
    .end local v1    # "buttonType":I
    :pswitch_1
    const/4 v1, -0x3

    .line 178
    .restart local v1    # "buttonType":I
    goto :goto_3

    .line 189
    :catch_1
    move-exception v4

    .line 191
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 227
    .end local v1    # "buttonType":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkAppInstalled(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 238
    const-string v4, ""

    .line 242
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    const-string v5, "bundle"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 250
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 253
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 254
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 257
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v7

    invoke-virtual {p0, p2, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 244
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v7

    invoke-virtual {p0, p2, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public closeRequested()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 275
    const-string v0, "closeRequested"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 286
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    .line 287
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    .line 289
    :cond_0
    return-void
.end method

.method public dismiss(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/tapjoy/TJAdUnitView;

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 303
    :cond_0
    return-void
.end method

.method public display()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "display"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public displayOffers(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 324
    .local v0, "currencyID":Ljava/lang/String;
    :try_start_0
    const-string v2, "currencyId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 331
    :goto_0
    new-instance v2, Lcom/tapjoy/TJCOffers;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;)V

    .line 332
    return-void

    .line 326
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TJAdUnitJSBridge"

    const-string v3, "no currencyID for showOfferWall"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displayRichMedia(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 340
    const/4 v2, 0x0

    .line 341
    .local v2, "inline":Z
    const/4 v1, 0x0

    .line 345
    .local v1, "html":Ljava/lang/String;
    :try_start_0
    const-string v4, "inline"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 351
    :goto_0
    :try_start_1
    const-string v4, "html"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 359
    :goto_1
    if-nez v1, :cond_0

    .line 361
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v6

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :goto_2
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v2, :cond_1

    .line 369
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/tapjoy/TJAdUnitJSBridge$3;

    invoke-direct {v5, p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge$3;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 422
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    const-class v5, Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "tjevent"

    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 424
    const-string v4, "view_type"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string v4, "html"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v4, "base_url"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v4, "callback_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 347
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public displayStoreURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 449
    :try_start_0
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 453
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 454
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 455
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 470
    const-string v2, ""

    .line 471
    .local v2, "url":Ljava/lang/String;
    const-string v0, ""

    .line 475
    .local v0, "cancelMessage":Ljava/lang/String;
    :try_start_0
    const-string v4, "cancelMessage"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    :goto_0
    :try_start_1
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    const-class v5, Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v3, "videoIntent":Landroid/content/Intent;
    const-string v4, "VIDEO_URL"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v4, "VIDEO_CANCEL_MESSAGE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v4, "VIDEO_SHOULD_DISMISS"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    const-string v4, "callback_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 499
    .end local v3    # "videoIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 477
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TJAdUnitJSBridge"

    const-string v5, "no cancelMessage"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 496
    .restart local v1    # "e":Ljava/lang/Exception;
    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v6

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getLocation(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 557
    const/high16 v4, 0x42c80000    # 100.0f

    .line 558
    .local v4, "accuracy":F
    const/4 v8, 0x0

    .line 563
    .local v8, "enable":Z
    :try_start_0
    const-string v0, "gpsAccuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 570
    :goto_0
    :try_start_1
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 577
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    .line 578
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 579
    .local v6, "criteria":Landroid/location/Criteria;
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "bestProvider":Ljava/lang/String;
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnitJSBridge$4;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    .line 620
    :cond_0
    if-eqz v8, :cond_2

    .line 622
    if-eqz v1, :cond_1

    .line 624
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 625
    new-array v0, v10, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    :goto_2
    return-void

    .line 572
    .end local v1    # "bestProvider":Ljava/lang/String;
    .end local v6    # "criteria":Landroid/location/Criteria;
    :catch_0
    move-exception v7

    .line 574
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 627
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "bestProvider":Ljava/lang/String;
    .restart local v6    # "criteria":Landroid/location/Criteria;
    :cond_1
    new-array v0, v10, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 635
    :cond_3
    new-array v0, v10, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 565
    .end local v1    # "bestProvider":Ljava/lang/String;
    .end local v6    # "criteria":Landroid/location/Criteria;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public varargs invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 750
    .local v0, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public invokeJSCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "callbackID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v1, ""

    invoke-virtual {v0, p2, v1, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public varargs invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackID"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 772
    .local v0, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v2, ""

    invoke-virtual {v1, v0, v2, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public log(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 648
    :try_start_0
    const-string v1, "TJAdUnitJSBridge"

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v4

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public nativeEval(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge$5;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 701
    return-void
.end method

.method public openApp(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 667
    :try_start_0
    const-string v3, "bundle"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 669
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 670
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v6

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public present(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 713
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 714
    .local v2, "visible":Ljava/lang/Boolean;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 716
    .local v1, "transparent":Ljava/lang/Boolean;
    const-string v3, "visible"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 720
    :try_start_1
    const-string v3, "transparent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 726
    :goto_0
    :try_start_2
    const-string v3, "customClose"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 731
    :goto_1
    :try_start_3
    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    invoke-direct {v3, p0, v4}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 733
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 740
    .end local v1    # "transparent":Ljava/lang/Boolean;
    .end local v2    # "visible":Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v6

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 728
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "transparent":Ljava/lang/Boolean;
    .restart local v2    # "visible":Ljava/lang/Boolean;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 722
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public sendActionCallback(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 791
    new-instance v2, Lcom/tapjoy/TJEventRequest;

    invoke-direct {v2}, Lcom/tapjoy/TJEventRequest;-><init>()V

    .line 792
    .local v2, "request":Lcom/tapjoy/TJEventRequest;
    const/4 v3, 0x0

    .line 796
    .local v3, "type":Ljava/lang/String;
    :try_start_0
    const-string v4, "type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 805
    :goto_0
    :try_start_1
    const-string v4, "quantity"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->quantity:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 814
    :goto_1
    :try_start_2
    const-string v4, "identifier"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tapjoy/TJEventRequest;->identifier:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 822
    :goto_2
    if-eqz v3, :cond_0

    iget-object v4, v2, Lcom/tapjoy/TJEventRequest;->identifier:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 824
    :cond_0
    const-string v4, "TJAdUnitJSBridge"

    const-string v5, "sendActionCallback: null type or identifier"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v8

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    :cond_1
    :goto_3
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 809
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 816
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 818
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 829
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "currency"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 831
    const/4 v4, 0x3

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    .line 850
    :cond_3
    :goto_4
    iget v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    if-nez v4, :cond_7

    .line 852
    const-string v4, "TJAdUnitJSBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v8

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 834
    :cond_4
    const-string v4, "inAppPurchase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 836
    iput v7, v2, Lcom/tapjoy/TJEventRequest;->type:I

    goto :goto_4

    .line 839
    :cond_5
    const-string v4, "navigation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 841
    const/4 v4, 0x4

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    goto :goto_4

    .line 844
    :cond_6
    const-string v4, "virtualGood"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 846
    const/4 v4, 0x2

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    goto :goto_4

    .line 858
    :cond_7
    new-instance v4, Lcom/tapjoy/TJAdUnitJSBridge$6;

    invoke-direct {v4, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$6;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/tapjoy/TJEventRequest;->callback:Lcom/tapjoy/TJEventRequestCallback;

    .line 873
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v4, v4, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v1

    .line 874
    .local v1, "event":Lcom/tapjoy/TJEvent;
    if-eqz v1, :cond_1

    .line 875
    invoke-virtual {v1}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/tapjoy/TJEventCallback;->didRequestAction(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJEventRequest;)V

    goto :goto_3
.end method

.method public setAllowRedirect(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 885
    const/4 v0, 0x1

    .line 889
    .local v0, "enabled":Z
    :try_start_0
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 893
    :goto_0
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 895
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    return-void

    .line 891
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    .line 905
    return-void
.end method

.method public setSpinnerVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 914
    const/4 v3, 0x0

    .line 915
    .local v3, "visible":Z
    const-string v2, "Loading..."

    .line 916
    .local v2, "title":Ljava/lang/String;
    const-string v1, ""

    .line 920
    .local v1, "message":Ljava/lang/String;
    :try_start_0
    const-string v4, "visible"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 923
    :try_start_1
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    const-string v4, "message"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 927
    :goto_0
    if-eqz v3, :cond_1

    .line 929
    :try_start_2
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->progressDialog:Landroid/app/ProgressDialog;

    .line 937
    :cond_0
    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    :goto_2
    return-void

    .line 933
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 934
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 939
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v7

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 925
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public share(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 18
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 958
    :try_start_0
    const-string v15, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 959
    .local v12, "network":Ljava/lang/String;
    const-string v15, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 960
    .local v11, "message":Ljava/lang/String;
    const/4 v6, 0x0

    .line 961
    .local v6, "imageURL":Ljava/lang/String;
    const/4 v8, 0x0

    .line 962
    .local v8, "linkURL":Ljava/lang/String;
    const/4 v10, 0x0

    .line 963
    .local v10, "localImageURL":Ljava/lang/String;
    const/4 v3, 0x0

    .line 964
    .local v3, "found":Z
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 968
    .local v14, "share":Landroid/content/Intent;
    :try_start_1
    const-string v15, "imageURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 977
    :goto_0
    :try_start_2
    const-string v15, "linkURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 986
    :goto_1
    if-eqz v6, :cond_0

    .line 988
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/tapjoy/TJAdUnitJSBridge;->downloadFileFromURL(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 990
    .local v9, "localFile":Ljava/io/File;
    if-eqz v9, :cond_0

    .line 991
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 995
    .end local v9    # "localFile":Ljava/io/File;
    :cond_0
    if-eqz v8, :cond_1

    .line 997
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1000
    :cond_1
    const-string v15, "android.intent.extra.TEXT"

    invoke-virtual {v14, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v15, "facebook"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1006
    if-eqz v6, :cond_6

    if-eqz v10, :cond_6

    .line 1008
    const-string v15, "image/*"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v15, "android.intent.extra.STREAM"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1029
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 1031
    .local v13, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1033
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1036
    :cond_4
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const/4 v3, 0x1

    .line 1042
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v3, :cond_8

    .line 1044
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    .end local v3    # "found":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "imageURL":Ljava/lang/String;
    .end local v8    # "linkURL":Ljava/lang/String;
    .end local v10    # "localImageURL":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "network":Ljava/lang/String;
    .end local v13    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "share":Landroid/content/Intent;
    :goto_3
    return-void

    .line 970
    .restart local v3    # "found":Z
    .restart local v6    # "imageURL":Ljava/lang/String;
    .restart local v8    # "linkURL":Ljava/lang/String;
    .restart local v10    # "localImageURL":Ljava/lang/String;
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v12    # "network":Ljava/lang/String;
    .restart local v14    # "share":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 972
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "TJAdUnitJSBridge"

    const-string v16, "no imageURL"

    invoke-static/range {v15 .. v16}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1054
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "found":Z
    .end local v6    # "imageURL":Ljava/lang/String;
    .end local v8    # "linkURL":Ljava/lang/String;
    .end local v10    # "localImageURL":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "network":Ljava/lang/String;
    .end local v14    # "share":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 1056
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 979
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "found":Z
    .restart local v6    # "imageURL":Ljava/lang/String;
    .restart local v8    # "linkURL":Ljava/lang/String;
    .restart local v10    # "localImageURL":Ljava/lang/String;
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v12    # "network":Ljava/lang/String;
    .restart local v14    # "share":Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 981
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v15, "TJAdUnitJSBridge"

    const-string v16, "no linkURL"

    invoke-static/range {v15 .. v16}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1013
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v15, "text/plain"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1018
    :cond_7
    const-string v15, "twitter"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1020
    const-string v15, "*/*"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    if-eqz v6, :cond_2

    if-eqz v10, :cond_2

    .line 1024
    const-string v15, "android.intent.extra.STREAM"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1049
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v13    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 1050
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 1051
    const-string v15, "Select"

    invoke-static {v14, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 1052
    .local v4, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    invoke-virtual {v15, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method public shouldClose(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1069
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1070
    .local v0, "close":Ljava/lang/Boolean;
    const-string v2, "close"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1073
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    instance-of v2, v2, Lcom/tapjoy/TJAdUnitView;

    if-eqz v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1078
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v0    # "close":Ljava/lang/Boolean;
    :goto_0
    iput-boolean v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 1090
    return-void

    .line 1080
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "e":Ljava/lang/Exception;
    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1086
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
