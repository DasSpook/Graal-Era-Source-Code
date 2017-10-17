.class public abstract Lcom/tapjoy/mraid/controller/Abstract;
.super Ljava/lang/Object;
.source "Abstract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;,
        Lcom/tapjoy/mraid/controller/Abstract$Properties;,
        Lcom/tapjoy/mraid/controller/Abstract$Dimensions;,
        Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    }
.end annotation


# static fields
.field private static final BOOLEAN_TYPE:Ljava/lang/String; = "boolean"

.field public static final EXIT:Ljava/lang/String; = "exit"

.field private static final FLOAT_TYPE:Ljava/lang/String; = "float"

.field public static final FULL_SCREEN:Ljava/lang/String; = "fullscreen"

.field private static final INT_TYPE:Ljava/lang/String; = "int"

.field private static final NAVIGATION_TYPE:Ljava/lang/String; = "class com.tapjoy.mraid.util.NavigationStringEnum"

.field private static final STRING_TYPE:Ljava/lang/String; = "class java.lang.String"

.field public static final STYLE_NORMAL:Ljava/lang/String; = "normal"

.field private static final TRANSITION_TYPE:Ljava/lang/String; = "class com.tapjoy.mraid.util.TransitionStringEnum"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMraidView:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 0
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/tapjoy/mraid/controller/Abstract;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    .line 256
    iput-object p2, p0, Lcom/tapjoy/mraid/controller/Abstract;->mContext:Landroid/content/Context;

    .line 257
    return-void
.end method

.method protected static getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 273
    .local v3, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 274
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 276
    .local v7, "obj":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v3

    if-ge v4, v11, :cond_8

    .line 277
    aget-object v2, v3, v4

    .line 278
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "name":Ljava/lang/String;
    const/16 v11, 0x5f

    const/16 v12, 0x2d

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "JSONName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 281
    .local v8, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 283
    .local v9, "typeStr":Ljava/lang/String;
    :try_start_0
    const-string v11, "int"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 284
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "value":Ljava/lang/String;
    const/4 v5, 0x0

    .line 286
    .local v5, "iVal":I
    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    .line 287
    const/4 v5, -0x1

    .line 289
    :try_start_1
    const-string v11, "#0x"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 290
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 302
    :goto_1
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    .end local v5    # "iVal":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    .restart local v5    # "iVal":I
    .restart local v10    # "value":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x1

    :try_start_3
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    goto :goto_1

    .line 300
    :cond_2
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 303
    .end local v5    # "iVal":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const-string v11, "class java.lang.String"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 304
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 305
    .restart local v10    # "value":Ljava/lang/String;
    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 319
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 306
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_5
    const-string v11, "boolean"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 307
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 308
    .local v10, "value":Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 309
    .end local v10    # "value":Z
    :cond_5
    const-string v11, "float"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 310
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 311
    .local v10, "value":F
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 312
    .end local v10    # "value":F
    :cond_6
    const-string v11, "class com.tapjoy.mraid.util.NavigationStringEnum"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 313
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tapjoy/mraid/util/NavigationStringEnum;->fromString(Ljava/lang/String;)Lcom/tapjoy/mraid/util/NavigationStringEnum;

    move-result-object v10

    .line 314
    .local v10, "value":Lcom/tapjoy/mraid/util/NavigationStringEnum;
    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 315
    .end local v10    # "value":Lcom/tapjoy/mraid/util/NavigationStringEnum;
    :cond_7
    const-string v11, "class com.tapjoy.mraid.util.TransitionStringEnum"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 316
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tapjoy/mraid/util/TransitionStringEnum;->fromString(Ljava/lang/String;)Lcom/tapjoy/mraid/util/TransitionStringEnum;

    move-result-object v10

    .line 317
    .local v10, "value":Lcom/tapjoy/mraid/util/TransitionStringEnum;
    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 325
    .end local v0    # "JSONName":Ljava/lang/String;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/reflect/Type;
    .end local v9    # "typeStr":Ljava/lang/String;
    .end local v10    # "value":Lcom/tapjoy/mraid/util/TransitionStringEnum;
    :cond_8
    return-object v7

    .line 295
    .restart local v0    # "JSONName":Ljava/lang/String;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v5    # "iVal":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/reflect/Type;
    .restart local v9    # "typeStr":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto/16 :goto_1
.end method


# virtual methods
.method public abstract stopAllListeners()V
.end method
