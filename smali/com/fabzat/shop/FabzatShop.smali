.class public Lcom/fabzat/shop/FabzatShop;
.super Ljava/lang/Object;
.source "FabzatShop.java"

# interfaces
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;
.implements Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static a:Landroid/app/Activity;

.field private static e:Ljava/lang/String;

.field private static synthetic f:[I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fabzat/shop/FabzatShop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/FabzatShop;->LOG_TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/FabzatShop;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fabzat/shop/FabzatShop;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 156
    sget-object v1, Lcom/fabzat/shop/FabzatShop;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Start plugin"

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fabzat/shop/manager/FZResourceManager;->removeListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    const-class v2, Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Activity is null. initWithStoreIdentifier has not been called!"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fabzat/shop/model/FZResourceState;->values()[Lcom/fabzat/shop/model/FZResourceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADED:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADING:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADING_ERROR:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->NOT_DEFINED:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/fabzat/shop/FabzatShop;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initWithStoreIdentifier(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fabzat/shop/FabzatShop;->e:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->getInstance()Lcom/fabzat/shop/manager/FZTypeFaceManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->init(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->init(Landroid/content/Context;)Ljava/security/cert/Certificate;

    .line 53
    invoke-static {p1}, Lcom/fabzat/shop/utils/FZTools;->init(Landroid/app/Activity;)V

    .line 56
    sput-object p1, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/fabzat/shop/FabzatShop;->b:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/fabzat/shop/FabzatShop;->c:Ljava/lang/String;

    .line 61
    sget-object v3, Lcom/fabzat/shop/FabzatShop;->e:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "fz_server_domain_ssl"

    invoke-static {v3, v4, v5}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "str1":I
    sget-object v3, Lcom/fabzat/shop/FabzatShop;->e:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "fz_server_shop"

    invoke-static {v3, v4, v5}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "str2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fabzat/shop/FabzatShop;->b:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/fabzat/shop/FabzatShop;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/fabzat/shop/dao/FZWebServiceGet;

    invoke-direct {v3, p1, v2}, Lcom/fabzat/shop/dao/FZWebServiceGet;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, p0}, Lcom/fabzat/shop/dao/FZWebServiceGet;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServiceGet;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Void;

    .line 69
    invoke-virtual {v3, v4}, Lcom/fabzat/shop/dao/FZWebServiceGet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method public isShopInitialized()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->isDefined()Z

    move-result v0

    return v0
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 92
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fabzat/shop/manager/FZShopManager;->setShop(Ljava/lang/String;)Lcom/fabzat/shop/model/FZContainer;

    .line 81
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Shop initialized"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/fabzat/shop/manager/FZUserInitializer;

    sget-object v1, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fabzat/shop/manager/FZUserInitializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZUserInitializer;->init()V

    .line 83
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public onStateChanged(Lcom/fabzat/shop/model/FZResourceState;)V
    .locals 2
    .param p1, "state"    # Lcom/fabzat/shop/model/FZResourceState;

    .prologue
    .line 172
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    sget-object v0, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    new-instance v1, Lcom/fabzat/shop/FabzatShop$1;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/FabzatShop$1;-><init>(Lcom/fabzat/shop/FabzatShop;)V

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZTools;->retryConnection(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/manager/FZResourceManager;->removeListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDistantResources(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/fabzat/shop/FabzatShop;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/fabzat/shop/FabzatShop;->d:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/manager/FZResourceManager;->addListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V

    .line 121
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    sget-object v1, Lcom/fabzat/shop/FabzatShop;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/fabzat/shop/manager/FZResourceManager;->loadRemoteResources(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZ3DResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZ3DResource;>;"
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fabzat/shop/manager/FZResourceManager;->loadLocalResources(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    .line 132
    invoke-static {}, Lcom/fabzat/shop/utils/FZImageCache;->clear()V

    .line 133
    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->deleteMainFolderContent()V

    .line 134
    invoke-static {}, Lcom/fabzat/shop/manager/FZCartManager;->clear()V

    .line 137
    invoke-direct {p0}, Lcom/fabzat/shop/FabzatShop;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/fabzat/shop/FabzatShop;->a()V

    goto :goto_0
.end method
