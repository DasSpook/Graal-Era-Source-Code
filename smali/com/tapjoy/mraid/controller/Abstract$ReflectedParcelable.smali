.class public Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;
.super Ljava/lang/Object;
.source "Abstract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectedParcelable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v4, 0x0

    .line 355
    .local v4, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 356
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 359
    move-object v6, p0

    .line 360
    .local v6, "obj":Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    array-length v9, v4

    if-ge v5, v9, :cond_2

    .line 361
    aget-object v3, v4, v5

    .line 363
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 365
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 366
    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    .line 367
    .local v8, "typeStr":Ljava/lang/String;
    const-string v9, "class com.tapjoy.mraid.util.NavigationStringEnum"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/mraid/util/NavigationStringEnum;->fromString(Ljava/lang/String;)Lcom/tapjoy/mraid/util/NavigationStringEnum;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .end local v8    # "typeStr":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 369
    .restart local v8    # "typeStr":Ljava/lang/String;
    :cond_1
    const-string v9, "class com.tapjoy.mraid.util.TransitionStringEnum"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/mraid/util/TransitionStringEnum;->fromString(Ljava/lang/String;)Lcom/tapjoy/mraid/util/TransitionStringEnum;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 380
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "typeStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 388
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    return-void

    .line 373
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 374
    .local v1, "dt":Ljava/lang/Object;
    instance-of v9, v1, Landroid/os/Parcelable$Creator;

    if-nez v9, :cond_0

    .line 375
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 383
    .end local v1    # "dt":Ljava/lang/Object;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags1"    # I

    .prologue
    .line 393
    const/4 v4, 0x0

    .line 394
    .local v4, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 395
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 397
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    array-length v8, v4

    if-ge v5, v8, :cond_2

    .line 398
    aget-object v3, v4, v5

    .line 399
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 401
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 402
    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "typeStr":Ljava/lang/String;
    const-string v8, "class com.tapjoy.mraid.util.NavigationStringEnum"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 404
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    invoke-virtual {v8}, Lcom/tapjoy/mraid/util/NavigationStringEnum;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    .end local v7    # "typeStr":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 405
    .restart local v7    # "typeStr":Ljava/lang/String;
    :cond_1
    const-string v8, "class com.tapjoy.mraid.util.TransitionStringEnum"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 406
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/mraid/util/TransitionStringEnum;

    invoke-virtual {v8}, Lcom/tapjoy/mraid/util/TransitionStringEnum;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 415
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "typeStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 423
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    return-void

    .line 409
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 410
    .local v1, "dt":Ljava/lang/Object;
    instance-of v8, v1, Landroid/os/Parcelable$Creator;

    if-nez v8, :cond_0

    .line 411
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 418
    .end local v1    # "dt":Ljava/lang/Object;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method
