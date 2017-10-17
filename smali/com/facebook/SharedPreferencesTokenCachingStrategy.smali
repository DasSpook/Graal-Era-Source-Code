.class public Lcom/facebook/SharedPreferencesTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;
.source "SharedPreferencesTokenCachingStrategy.java"


# static fields
.field private static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    .line 104
    const-string v1, "context"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    .end local p2    # "cacheKey":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    .line 117
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "{}"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 297
    .local v12, "jsonString":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v10, "json":Lorg/json/JSONObject;
    const-string v17, "valueType"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 301
    .local v16, "valueType":Ljava/lang/String;
    const-string v17, "bool"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 302
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v17, "bool[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 304
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 305
    .local v11, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [Z

    .line 306
    .local v4, "array":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 307
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v17

    aput-boolean v17, v4, v9

    .line 306
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 309
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 310
    .end local v4    # "array":[Z
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    const-string v17, "byte"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 311
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 312
    :cond_4
    const-string v17, "byte[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 313
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 314
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 315
    .local v4, "array":[B
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    .line 316
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v4, v9

    .line 315
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 318
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 319
    .end local v4    # "array":[B
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    const-string v17, "short"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 320
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 321
    :cond_7
    const-string v17, "short[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 322
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 323
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [S

    .line 324
    .local v4, "array":[S
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_8

    .line 325
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v4, v9

    .line 324
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 327
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 328
    .end local v4    # "array":[S
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string v17, "int"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 329
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 330
    :cond_a
    const-string v17, "int[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 331
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 332
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [I

    .line 333
    .local v4, "array":[I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_b

    .line 334
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    aput v17, v4, v9

    .line 333
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 336
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 337
    .end local v4    # "array":[I
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_c
    const-string v17, "long"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 338
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 339
    :cond_d
    const-string v17, "long[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 340
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 341
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [J

    .line 342
    .local v4, "array":[J
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_e

    .line 343
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v17

    aput-wide v17, v4, v9

    .line 342
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 345
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 346
    .end local v4    # "array":[J
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_f
    const-string v17, "float"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 347
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 348
    :cond_10
    const-string v17, "float[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 349
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 350
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [F

    .line 351
    .local v4, "array":[F
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_11

    .line 352
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, v4, v9

    .line 351
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 354
    :cond_11
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 355
    .end local v4    # "array":[F
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string v17, "double"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 356
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 357
    :cond_13
    const-string v17, "double[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 358
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 359
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [D

    .line 360
    .local v4, "array":[D
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_14

    .line 361
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v17

    aput-wide v17, v4, v9

    .line 360
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 363
    :cond_14
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 364
    .end local v4    # "array":[D
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_15
    const-string v17, "char"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 365
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "charString":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 367
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 369
    .end local v5    # "charString":Ljava/lang/String;
    :cond_16
    const-string v17, "char[]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 370
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 371
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [C

    .line 372
    .local v4, "array":[C
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_18

    .line 373
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 374
    .restart local v5    # "charString":Ljava/lang/String;
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 375
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    aput-char v17, v4, v9

    .line 372
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 378
    .end local v5    # "charString":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 379
    .end local v4    # "array":[C
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    :cond_19
    const-string v17, "string"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 380
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    :cond_1a
    const-string v17, "stringList"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 382
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 383
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 384
    .local v14, "numStrings":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v15, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    if-ge v9, v14, :cond_1c

    .line 386
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 387
    .local v13, "jsonStringValue":Ljava/lang/Object;
    sget-object v17, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_1b

    const/4 v13, 0x0

    .end local v13    # "jsonStringValue":Ljava/lang/Object;
    :goto_a
    invoke-virtual {v15, v9, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 387
    .restart local v13    # "jsonStringValue":Ljava/lang/Object;
    :cond_1b
    check-cast v13, Ljava/lang/String;

    goto :goto_a

    .line 389
    .end local v13    # "jsonStringValue":Ljava/lang/Object;
    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 390
    .end local v9    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v14    # "numStrings":I
    .end local v15    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    const-string v17, "enum"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 392
    :try_start_0
    const-string v17, "enumType"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "enumType":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 396
    .local v6, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    .line 397
    .local v8, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 398
    .end local v6    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    .end local v7    # "enumType":Ljava/lang/String;
    .end local v8    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 399
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 182
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 183
    .local v12, "value":Ljava/lang/Object;
    if-nez v12, :cond_1

    .line 292
    .end local v12    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v9, 0x0

    .line 189
    .local v9, "supportedType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 190
    .local v5, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v4, "json":Lorg/json/JSONObject;
    instance-of v13, v12, Ljava/lang/Byte;

    if-eqz v13, :cond_4

    .line 193
    const-string v9, "byte"

    .line 194
    const-string v13, "value"

    check-cast v12, Ljava/lang/Byte;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Byte;->intValue()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    :cond_2
    :goto_1
    if-eqz v9, :cond_0

    .line 282
    const-string v13, "valueType"

    invoke-virtual {v4, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    if-eqz v5, :cond_3

    .line 286
    const-string v13, "value"

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "jsonString":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 195
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v13, v12, Ljava/lang/Short;

    if-eqz v13, :cond_5

    .line 196
    const-string v9, "short"

    .line 197
    const-string v13, "value"

    check-cast v12, Ljava/lang/Short;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Short;->intValue()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 198
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_6

    .line 199
    const-string v9, "int"

    .line 200
    const-string v13, "value"

    check-cast v12, Ljava/lang/Integer;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 201
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_7

    .line 202
    const-string v9, "long"

    .line 203
    const-string v13, "value"

    check-cast v12, Ljava/lang/Long;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 204
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v13, v12, Ljava/lang/Float;

    if-eqz v13, :cond_8

    .line 205
    const-string v9, "float"

    .line 206
    const-string v13, "value"

    check-cast v12, Ljava/lang/Float;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 207
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_9

    .line 208
    const-string v9, "double"

    .line 209
    const-string v13, "value"

    check-cast v12, Ljava/lang/Double;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 210
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v13, v12, Ljava/lang/Boolean;

    if-eqz v13, :cond_a

    .line 211
    const-string v9, "bool"

    .line 212
    const-string v13, "value"

    check-cast v12, Ljava/lang/Boolean;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 213
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v13, v12, Ljava/lang/Character;

    if-eqz v13, :cond_b

    .line 214
    const-string v9, "char"

    .line 215
    const-string v13, "value"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 216
    :cond_b
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_c

    .line 217
    const-string v9, "string"

    .line 218
    const-string v13, "value"

    check-cast v12, Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 219
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v13, v12, Ljava/lang/Enum;

    if-eqz v13, :cond_d

    .line 220
    const-string v9, "enum"

    .line 221
    const-string v13, "value"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v13, "enumType"

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 226
    :cond_d
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 227
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    instance-of v13, v12, [B

    if-eqz v13, :cond_e

    .line 228
    const-string v9, "byte[]"

    .line 229
    check-cast v12, [B

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [B

    .local v2, "arr$":[B
    array-length v7, v2

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v7, :cond_2

    aget-byte v10, v2, v3

    .line 230
    .local v10, "v":B
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 232
    .end local v2    # "arr$":[B
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":B
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v13, v12, [S

    if-eqz v13, :cond_f

    .line 233
    const-string v9, "short[]"

    .line 234
    check-cast v12, [S

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [S

    .local v2, "arr$":[S
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v7, :cond_2

    aget-short v10, v2, v3

    .line 235
    .local v10, "v":S
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 237
    .end local v2    # "arr$":[S
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":S
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_f
    instance-of v13, v12, [I

    if-eqz v13, :cond_10

    .line 238
    const-string v9, "int[]"

    .line 239
    check-cast v12, [I

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [I

    .local v2, "arr$":[I
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v7, :cond_2

    aget v10, v2, v3

    .line 240
    .local v10, "v":I
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 242
    .end local v2    # "arr$":[I
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":I
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v13, v12, [J

    if-eqz v13, :cond_11

    .line 243
    const-string v9, "long[]"

    .line 244
    check-cast v12, [J

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [J

    .local v2, "arr$":[J
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v7, :cond_2

    aget-wide v10, v2, v3

    .line 245
    .local v10, "v":J
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 247
    .end local v2    # "arr$":[J
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":J
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_11
    instance-of v13, v12, [F

    if-eqz v13, :cond_12

    .line 248
    const-string v9, "float[]"

    .line 249
    check-cast v12, [F

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [F

    .local v2, "arr$":[F
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v7, :cond_2

    aget v10, v2, v3

    .line 250
    .local v10, "v":F
    float-to-double v13, v10

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 252
    .end local v2    # "arr$":[F
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":F
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_12
    instance-of v13, v12, [D

    if-eqz v13, :cond_13

    .line 253
    const-string v9, "double[]"

    .line 254
    check-cast v12, [D

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [D

    .local v2, "arr$":[D
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_7
    if-ge v3, v7, :cond_2

    aget-wide v10, v2, v3

    .line 255
    .local v10, "v":D
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 257
    .end local v2    # "arr$":[D
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":D
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_13
    instance-of v13, v12, [Z

    if-eqz v13, :cond_14

    .line 258
    const-string v9, "bool[]"

    .line 259
    check-cast v12, [Z

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [Z

    .local v2, "arr$":[Z
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_8
    if-ge v3, v7, :cond_2

    aget-boolean v10, v2, v3

    .line 260
    .local v10, "v":Z
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 262
    .end local v2    # "arr$":[Z
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":Z
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_14
    instance-of v13, v12, [C

    if-eqz v13, :cond_15

    .line 263
    const-string v9, "char[]"

    .line 264
    check-cast v12, [C

    .end local v12    # "value":Ljava/lang/Object;
    move-object v2, v12

    check-cast v2, [C

    .local v2, "arr$":[C
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_9
    if-ge v3, v7, :cond_2

    aget-char v10, v2, v3

    .line 265
    .local v10, "v":C
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 267
    .end local v2    # "arr$":[C
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":C
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_15
    instance-of v13, v12, Ljava/util/List;

    if-eqz v13, :cond_17

    .line 268
    const-string v9, "stringList"

    move-object v8, v12

    .line 270
    check-cast v8, Ljava/util/List;

    .line 271
    .local v8, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 272
    .local v10, "v":Ljava/lang/String;
    if-nez v10, :cond_16

    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v10    # "v":Ljava/lang/String;
    :cond_16
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 277
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 125
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v4, "settings":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 129
    .local v0, "allCachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v6, 0x5

    sget-object v7, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading cached value for key: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v4, 0x0

    .line 140
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "settings":Landroid/os/Bundle;
    :cond_0
    return-object v4
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x5

    .line 151
    const-string v5, "bundle"

    invoke-static {p1, v5}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v3, p1, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v6, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error processing value for key: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v9, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 167
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    .line 168
    .local v4, "successfulCommit":Z
    if-nez v4, :cond_0

    .line 169
    sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v6, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    const-string v7, "SharedPreferences.Editor.commit() was not successful"

    invoke-static {v5, v9, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
