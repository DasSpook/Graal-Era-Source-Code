.class public final Lcom/distimo/sdk/DistimoSDK;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field private static g:Landroid/os/Handler;

.field private static h:Ljava/lang/Runnable;

.field private static i:Landroid/content/SharedPreferences;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/distimo/sdk/DistimoSDK;->j:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/distimo/sdk/DistimoSDK;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/distimo/sdk/DistimoSDK;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/distimo/sdk/DistimoSDK;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected static a(Lcom/distimo/sdk/i;)V
    .locals 0

    invoke-static {p0}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/i;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "productID"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "orderID"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "quantity"

    if-eqz p2, :cond_0

    const-string v0, "-1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/distimo/sdk/i;

    const-string v2, "InAppPurchase"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/distimo/sdk/i;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/i;)V

    return-void

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/distimo/sdk/DistimoSDK;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/distimo/sdk/DistimoSDK;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v2, "v4b6nW85ZULPsEShuwdY"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v3, "d9JG1L4PnM52E68ApSiK"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/distimo/sdk/InstallReferrerReceiver;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Lcom/distimo/sdk/i;

    const-string v3, "FirstLaunch"

    invoke-direct {v2, v3, v0, v1}, Lcom/distimo/sdk/i;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/i;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "d9JG1L4PnM52E68ApSiK"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->g:Landroid/os/Handler;

    sget-object v1, Lcom/distimo/sdk/DistimoSDK;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    if-nez v2, :cond_0

    new-instance v2, Lcom/distimo/sdk/i;

    const-string v3, "FirstLaunch"

    invoke-direct {v2, v3, v1, v1}, Lcom/distimo/sdk/i;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v4b6nW85ZULPsEShuwdY"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static onBannerClick(Ljava/lang/String;)V
    .locals 4
    .param p0, "publisher"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "publisher"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lcom/distimo/sdk/i;

    const-string v2, "BannerClick"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/distimo/sdk/i;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/i;)V

    return-void
.end method

.method public static onCreate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    sget-boolean v1, Lcom/distimo/sdk/DistimoSDK;->j:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/distimo/sdk/DistimoSDK;->j:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "8KgNwA2MuiQEQmEYIiiW"

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->c:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v3, Lcom/distimo/sdk/DistimoSDK;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v3, "FiiXtVPrKKw25oeAlQaS"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/distimo/sdk/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->d:Ljava/lang/String;

    sget-object v1, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "FiiXtVPrKKw25oeAlQaS"

    sget-object v4, Lcom/distimo/sdk/DistimoSDK;->d:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    sget-object v3, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v4, "9FVoDgY1vU7gVHge3vJj"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_3
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "9FVoDgY1vU7gVHge3vJj"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v0}, Lcom/distimo/sdk/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distimo/sdk/DistimoSDK;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/distimo/sdk/f;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/distimo/sdk/d;

    invoke-direct {v0, v2}, Lcom/distimo/sdk/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v1, "v4b6nW85ZULPsEShuwdY"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v3, "d9JG1L4PnM52E68ApSiK"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/distimo/sdk/InstallReferrerReceiver;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lcom/distimo/sdk/DistimoSDK;->c(Landroid/content/Context;)V

    :cond_1
    :goto_4
    return-void

    :catch_0
    move-exception v1

    const-string v1, "0"

    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    sput-object v1, Lcom/distimo/sdk/DistimoSDK;->d:Ljava/lang/String;

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    if-nez v1, :cond_1

    new-instance v0, Lcom/distimo/sdk/e;

    invoke-direct {v0, v2}, Lcom/distimo/sdk/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/distimo/sdk/DistimoSDK;->h:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/distimo/sdk/DistimoSDK;->g:Landroid/os/Handler;

    sget-object v1, Lcom/distimo/sdk/DistimoSDK;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public static onExternalPurchase(Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 4
    .param p0, "productID"    # Ljava/lang/String;
    .param p1, "currency"    # Ljava/lang/String;
    .param p2, "price"    # D
    .param p4, "quantity"    # I

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "productID"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "currency"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quantity"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/distimo/sdk/i;

    const-string v2, "ExternalPurchase"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/distimo/sdk/i;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/i;)V

    return-void
.end method

.method public static onInAppPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "productID"    # Ljava/lang/String;
    .param p1, "orderID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/distimo/sdk/DistimoSDK;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static onInAppPurchaseRefunded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "productID"    # Ljava/lang/String;
    .param p1, "orderID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/distimo/sdk/DistimoSDK;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static onUserRegistered()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v1, "E7EkjEbZANQq5x3BsJZc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "E7EkjEbZANQq5x3BsJZc"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/distimo/sdk/i;

    const-string v1, "UserRegistered"

    invoke-direct {v0, v1, v3, v3}, Lcom/distimo/sdk/i;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/i;)V

    :cond_0
    return-void
.end method

.method public static openAppLink(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "applinkHandle"    # Ljava/lang/String;
    .param p1, "campaignHandle"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/distimo/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 4
    .param p0, "userID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    const-string v1, "mjaEKufRe6vNtt8PsciU"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sget-object v0, Lcom/distimo/sdk/DistimoSDK;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mjaEKufRe6vNtt8PsciU"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/distimo/sdk/i;

    const-string v2, "UserID"

    invoke-direct {v1, v2, v0, v3}, Lcom/distimo/sdk/i;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/i;)V

    goto :goto_0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    const-string v0, "2.3"

    return-object v0
.end method
