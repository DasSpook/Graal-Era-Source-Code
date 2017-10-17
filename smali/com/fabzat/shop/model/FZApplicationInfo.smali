.class public Lcom/fabzat/shop/model/FZApplicationInfo;
.super Ljava/lang/Object;
.source "FZApplicationInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PLATFORM:Ljava/lang/String; = "android"


# instance fields
.field private _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/fabzat/shop/model/FZApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/model/FZApplicationInfo;->LOG_TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 19
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/fabzat/shop/model/FZApplicationInfo;->_version:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/fabzat/shop/model/FZApplicationInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not retrieve application version"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v2, 0x1

    iput v2, p0, Lcom/fabzat/shop/model/FZApplicationInfo;->_version:I

    goto :goto_0
.end method


# virtual methods
.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "android"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/fabzat/shop/model/FZApplicationInfo;->_version:I

    return v0
.end method
