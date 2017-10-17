.class public Lcom/fabzat/shop/utils/FZTools;
.super Ljava/lang/Object;
.source "FZTools.java"


# static fields
.field private static dj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "host_logo"

    sput-object v0, Lcom/fabzat/shop/utils/FZTools;->dj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPowerOfTwo(I)Z
    .locals 2
    .param p0, "number"    # I

    .prologue
    const/4 v0, 0x0

    .line 122
    if-gtz p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 165
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 166
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static f(I)I
    .locals 6
    .param p0, "number"    # I

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 135
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 4
    .param p0, "price"    # D
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 330
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPrice(D)Ljava/lang/String;
    .locals 4
    .param p0, "price"    # D
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "%.2f %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v3}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSize(DLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "size"    # D
    .param p2, "unit"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 320
    const-string v0, "%.1f%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, v1, p0}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Ljava/lang/String;)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v0, v1, p0}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, p0}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayout(Ljava/lang/String;)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, v1, p0}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNearestPowerOfTwo(I)I
    .locals 4
    .param p0, "val"    # I

    .prologue
    .line 145
    invoke-static {p0}, Lcom/fabzat/shop/utils/FZTools;->f(I)I

    move-result v0

    .line 146
    .local v0, "pow1":I
    div-int/lit8 v2, p0, 0x2

    invoke-static {v2}, Lcom/fabzat/shop/utils/FZTools;->f(I)I

    move-result v1

    .line 148
    .local v1, "pow2":I
    sub-int v2, v0, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 150
    .end local v0    # "pow1":I
    :goto_0
    return v0

    .restart local v0    # "pow1":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getRaw(Ljava/lang/String;)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-static {v0, v1, p0}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, "r":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 375
    .local v4, "id":I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".R"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 378
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 380
    .local v1, "desireClass":Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-lt v3, v6, :cond_1

    .line 388
    :goto_1
    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    .line 404
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    :cond_0
    :goto_2
    const-string v6, "Fabzat"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "resource name:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return v4

    .line 381
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v1    # "desireClass":Ljava/lang/Class;
    .restart local v3    # "i":I
    :cond_1
    :try_start_1
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 382
    aget-object v1, v0, v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4

    .line 384
    goto :goto_1

    .line 380
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 394
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 396
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 397
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 398
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 399
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 400
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 74
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method public static getScreenMaximum(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 110
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 112
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public static getScreenMinimum(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 97
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 99
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public static getStringId(Ljava/lang/String;)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, v1, p0}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleable(Ljava/lang/String;)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "styleable"

    invoke-static {v0, v1, p0}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleables(Ljava/lang/String;)[I
    .locals 7
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 442
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".R$styleable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 445
    .local v1, "fields2":[Ljava/lang/reflect/Field;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .end local v1    # "fields2":[Ljava/lang/reflect/Field;
    :goto_1
    move-object v2, v3

    .line 460
    :goto_2
    return-object v2

    .line 445
    .restart local v1    # "fields2":[Ljava/lang/reflect/Field;
    :cond_0
    aget-object v0, v1, v4

    .line 448
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .local v2, "ret":[I
    goto :goto_2

    .line 445
    .end local v2    # "ret":[I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "fields2":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 30
    const-string v0, "FZScreenSize"

    .line 33
    .local v0, "LOG_TAG":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v5, :cond_1

    .line 35
    sput v5, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    .line 36
    const-string v1, "Screen size is xlarge"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v4, :cond_2

    .line 40
    sput v4, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    .line 41
    const-string v1, "Screen size is large"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v3, :cond_3

    .line 45
    sput v3, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    .line 46
    const-string v1, "Screen size is normal"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_0

    .line 50
    sput v2, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    .line 51
    const-string v1, "Screen size is small"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 214
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 215
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 v2, 0x1

    .line 218
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPriorToHoneycomb()Z
    .locals 2

    .prologue
    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenSmall(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logTimeStamp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "start"    # Z

    .prologue
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v0, "start "

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 203
    :cond_0
    const-string v0, "end "

    goto :goto_0
.end method

.method public static pixelsToSp(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 193
    .local v0, "scaledDensity":F
    int-to-float v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static retryConnection(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onclick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const-string v1, "fz_alert_title_errorConnect"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    const-string v1, "fz_alert_msg_errorShopProductsConnectRequired"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 229
    return-void
.end method

.method public static setLogo(Landroid/app/Activity;Landroid/view/View;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "img"    # Landroid/view/View;

    .prologue
    .line 354
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .line 355
    .local v2, "image":Landroid/widget/ImageView;
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 358
    .local v4, "res":Landroid/content/res/Resources;
    sget-object v6, Lcom/fabzat/shop/utils/FZTools;->dj:Ljava/lang/String;

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 359
    .local v5, "resID":I
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v2    # "image":Landroid/widget/ImageView;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resID":I
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 364
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setLogo(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 3
    .param p0, "activity"    # Lcom/fabzat/shop/activities/FZActivity;

    .prologue
    .line 339
    :try_start_0
    const-string v2, "fz_logo"

    invoke-static {v2}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 340
    .local v1, "image":Landroid/widget/ImageView;
    invoke-static {p0, v1}, Lcom/fabzat/shop/utils/FZTools;->setLogo(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v1    # "image":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLogo(Ljava/lang/String;)V
    .locals 0
    .param p0, "logo"    # Ljava/lang/String;

    .prologue
    .line 62
    sput-object p0, Lcom/fabzat/shop/utils/FZTools;->dj:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static showConfirmDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 296
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    const v1, 0x1040009

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    return-void
.end method

.method public static showConnectionErrorDialog(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    const-string v1, "fz_label_information"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    const-string v1, "fz_alert_title_errorConnect"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 237
    return-void
.end method

.method public static showMessage(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # I

    .prologue
    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    const-string v1, "fz_label_information"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 251
    return-void
.end method

.method public static showMessage(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "message"    # I

    .prologue
    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method

.method public static showMessage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 271
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v0, "fz_label_information"

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;ILjava/lang/String;)V

    .line 260
    return-void
.end method

.method public static spToPixels(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sp"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 182
    .local v0, "scaledDensity":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method
