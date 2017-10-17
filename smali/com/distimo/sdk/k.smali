.class final Lcom/distimo/sdk/k;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "iUMZo9KH0GINHA0grXdb"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/Map;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "BChtZqHo55haUvWaHAjE"

    aput-object v1, v2, v0

    const-string v0, "Nbxub6tYsC4g5DbFbgZN"

    aput-object v0, v2, v9

    const-string v0, "t9PSswmXu2sE5PVA6Zq4"

    aput-object v0, v2, v10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BChtZqHo55haUvWaHAjE = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "z3nmDV24U0qFWm7X4pqU"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method


# virtual methods
.method final a()Ljava/util/ArrayList;
    .locals 14

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/distimo/sdk/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "E2JM7QGIpG60aWeT6a2Z"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "rtAHrQshIqQgGaSiYdYq"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "rx2bp71JtmNNu0eXtWkB"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "jH8jWi0okVm2Q851uonz"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "fMcxuAIZI0PONUrKi67t"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "YkWrccIQbLjJeOpjVUdD"

    aput-object v3, v2, v1

    const-string v1, "m1IIXjAg5dqwkc1qBttt"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x5

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v1, 0x6

    invoke-interface {v13, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-static {v0, v2}, Lcom/distimo/sdk/k;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/Map;

    move-result-object v5

    new-instance v1, Lcom/distimo/sdk/i;

    int-to-long v2, v2

    invoke-direct/range {v1 .. v11}, Lcom/distimo/sdk/i;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/distimo/sdk/k;->close()V

    :cond_3
    return-object v12

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method final a(Lcom/distimo/sdk/i;)Z
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/distimo/sdk/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_4

    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "E2JM7QGIpG60aWeT6a2Z"

    invoke-static {p1}, Lcom/distimo/sdk/i;->b(Lcom/distimo/sdk/i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rtAHrQshIqQgGaSiYdYq"

    invoke-static {p1}, Lcom/distimo/sdk/i;->c(Lcom/distimo/sdk/i;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "rx2bp71JtmNNu0eXtWkB"

    invoke-static {p1}, Lcom/distimo/sdk/i;->d(Lcom/distimo/sdk/i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jH8jWi0okVm2Q851uonz"

    invoke-static {p1}, Lcom/distimo/sdk/i;->e(Lcom/distimo/sdk/i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fMcxuAIZI0PONUrKi67t"

    invoke-static {p1}, Lcom/distimo/sdk/i;->f(Lcom/distimo/sdk/i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "YkWrccIQbLjJeOpjVUdD"

    invoke-static {p1}, Lcom/distimo/sdk/i;->a(Lcom/distimo/sdk/i;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "m1IIXjAg5dqwkc1qBttt"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v0, v5, v11

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/distimo/sdk/i;->g(Lcom/distimo/sdk/i;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/distimo/sdk/i;->g(Lcom/distimo/sdk/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/distimo/sdk/i;->g(Lcom/distimo/sdk/i;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "BChtZqHo55haUvWaHAjE"

    long-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "Nbxub6tYsC4g5DbFbgZN"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "t9PSswmXu2sE5PVA6Zq4"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "z3nmDV24U0qFWm7X4pqU"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    if-ne v0, v3, :cond_1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p1, v5, v6}, Lcom/distimo/sdk/i;->a(J)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_3
    invoke-virtual {p0}, Lcom/distimo/sdk/k;->close()V

    return v0

    :catch_0
    move-exception v1

    move-object v4, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method final b(Lcom/distimo/sdk/i;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/distimo/sdk/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/distimo/sdk/i;->h(Lcom/distimo/sdk/i;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "m1IIXjAg5dqwkc1qBttt"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BChtZqHo55haUvWaHAjE = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/distimo/sdk/i;->h(Lcom/distimo/sdk/i;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "z3nmDV24U0qFWm7X4pqU"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/distimo/sdk/k;->close()V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v0, "CREATE TABLE m1IIXjAg5dqwkc1qBttt (_id INTEGER PRIMARY KEY AUTOINCREMENT, E2JM7QGIpG60aWeT6a2Z TEXT NOT NULL, rtAHrQshIqQgGaSiYdYq LONG, rx2bp71JtmNNu0eXtWkB TEXT NOT NULL, jH8jWi0okVm2Q851uonz TEXT NOT NULL, fMcxuAIZI0PONUrKi67t TEXT NOT NULL, YkWrccIQbLjJeOpjVUdD TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE z3nmDV24U0qFWm7X4pqU (BChtZqHo55haUvWaHAjE INTEGER, Nbxub6tYsC4g5DbFbgZN TEXT NOT NULL, t9PSswmXu2sE5PVA6Zq4 TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX S6NFKoXGqBqw9DyWbYgA ON z3nmDV24U0qFWm7X4pqU (BChtZqHo55haUvWaHAjE, Nbxub6tYsC4g5DbFbgZN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    const-string v0, "ALTER TABLE m1IIXjAg5dqwkc1qBttt ADD fMcxuAIZI0PONUrKi67t TEXT NOT NULL CONSTRAINT oU8Uiw7zWkIhaqu1AvFN DEFAULT \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    if-ge p2, v1, :cond_1

    if-lt p3, v1, :cond_1

    const-string v0, "ALTER TABLE m1IIXjAg5dqwkc1qBttt ADD YkWrccIQbLjJeOpjVUdD TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
