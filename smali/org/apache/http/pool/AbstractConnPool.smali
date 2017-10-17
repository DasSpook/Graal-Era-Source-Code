.class public abstract Lorg/apache/http/pool/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lorg/apache/http/pool/ConnPool;
.implements Lorg/apache/http/pool/ConnPoolControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "E:",
        "Lorg/apache/http/pool/PoolEntry",
        "<TT;TC;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/http/pool/ConnPool",
        "<TT;TE;>;",
        "Lorg/apache/http/pool/ConnPoolControl",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final available:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final connFactory:Lorg/apache/http/pool/ConnFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/pool/ConnFactory",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private volatile defaultMaxPerRoute:I

.field private volatile isShutDown:Z

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final maxPerRoute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile maxTotal:I

.field private final pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Lorg/apache/http/pool/RouteSpecificPool",
            "<TT;TC;TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/pool/ConnFactory;II)V
    .locals 1
    .param p2, "defaultMaxPerRoute"    # I
    .param p3, "maxTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnFactory",
            "<TT;TC;>;II)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "connFactory":Lorg/apache/http/pool/ConnFactory;, "Lorg/apache/http/pool/ConnFactory<TT;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "Connection factory"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/ConnFactory;

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->connFactory:Lorg/apache/http/pool/ConnFactory;

    .line 85
    const-string v0, "Max per route value"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/pool/AbstractConnPool;->defaultMaxPerRoute:I

    .line 86
    const-string v0, "Max total value"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/pool/AbstractConnPool;->maxTotal:I

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/PoolEntryFuture;)Lorg/apache/http/pool/PoolEntry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/pool/AbstractConnPool;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "x5"    # Lorg/apache/http/pool/PoolEntryFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lorg/apache/http/pool/AbstractConnPool;->getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/PoolEntryFuture;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method private enumEntries(Ljava/util/Iterator;Lorg/apache/http/pool/PoolEntryCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TE;>;",
            "Lorg/apache/http/pool/PoolEntryCallback",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .local p2, "callback":Lorg/apache/http/pool/PoolEntryCallback;, "Lorg/apache/http/pool/PoolEntryCallback<TT;TC;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 461
    .local v0, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-interface {p2, v0}, Lorg/apache/http/pool/PoolEntryCallback;->process(Lorg/apache/http/pool/PoolEntry;)V

    .line 462
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;

    move-result-object v1

    .line 464
    .local v1, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v1, v0}, Lorg/apache/http/pool/RouteSpecificPool;->remove(Lorg/apache/http/pool/PoolEntry;)Z

    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 468
    .end local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v1    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_1
    return-void
.end method

.method private getMax(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 336
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/apache/http/pool/AbstractConnPool;->defaultMaxPerRoute:I

    goto :goto_0
.end method

.method private getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/http/pool/RouteSpecificPool",
            "<TT;TC;TE;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/RouteSpecificPool;

    .line 145
    .local v0, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/apache/http/pool/AbstractConnPool$1;

    .end local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-direct {v0, p0, p1, p1}, Lorg/apache/http/pool/AbstractConnPool$1;-><init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .restart local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    return-object v0
.end method

.method private getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/PoolEntryFuture;)Lorg/apache/http/pool/PoolEntry;
    .locals 21
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    .local p6, "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    const/4 v4, 0x0

    .line 212
    .local v4, "deadline":Ljava/util/Date;
    const-wide/16 v17, 0x0

    cmp-long v17, p3, v17

    if-lez v17, :cond_0

    .line 213
    new-instance v4, Ljava/util/Date;

    .end local v4    # "deadline":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 217
    .restart local v4    # "deadline":Ljava/util/Date;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 219
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;

    move-result-object v13

    .line 220
    .local v13, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    const/4 v5, 0x0

    .line 221
    .local v5, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_1
    if-nez v5, :cond_b

    .line 222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/pool/AbstractConnPool;->isShutDown:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    const/16 v17, 0x1

    :goto_0
    const-string v18, "Connection pool shut down"

    invoke-static/range {v17 .. v18}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 224
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->getFree(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v5

    .line 225
    if-nez v5, :cond_4

    .line 236
    :cond_2
    if-eqz v5, :cond_6

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v5

    .end local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .local v6, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :goto_2
    return-object v6

    .line 222
    .end local v6    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 228
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/http/pool/PoolEntry;->isClosed()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Lorg/apache/http/pool/PoolEntry;->isExpired(J)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 229
    :cond_5
    invoke-virtual {v5}, Lorg/apache/http/pool/PoolEntry;->close()V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 231
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v5, v0}, Lorg/apache/http/pool/RouteSpecificPool;->free(Lorg/apache/http/pool/PoolEntry;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 299
    .end local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v13    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v17

    .line 243
    .restart local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v13    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_6
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result v11

    .line 245
    .local v11, "maxPerRoute":I
    const/16 v17, 0x0

    invoke-virtual {v13}, Lorg/apache/http/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    sub-int v18, v18, v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 246
    .local v7, "excess":I
    if-lez v7, :cond_7

    .line 247
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v7, :cond_7

    .line 248
    invoke-virtual {v13}, Lorg/apache/http/pool/RouteSpecificPool;->getLastUsed()Lorg/apache/http/pool/PoolEntry;

    move-result-object v10

    .line 249
    .local v10, "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    if-nez v10, :cond_9

    .line 258
    .end local v9    # "i":I
    .end local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_7
    invoke-virtual {v13}, Lorg/apache/http/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v11, :cond_a

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v16

    .line 260
    .local v16, "totalUsed":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/pool/AbstractConnPool;->maxTotal:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 261
    .local v8, "freeCapacity":I
    if-lez v8, :cond_a

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v15

    .line 263
    .local v15, "totalAvailable":I
    add-int/lit8 v17, v8, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_8

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_8

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/pool/PoolEntry;

    .line 266
    .restart local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->close()V

    .line 267
    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;

    move-result-object v12

    .line 268
    .local v12, "otherpool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v12, v10}, Lorg/apache/http/pool/RouteSpecificPool;->remove(Lorg/apache/http/pool/PoolEntry;)Z

    .line 271
    .end local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v12    # "otherpool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->connFactory:Lorg/apache/http/pool/ConnFactory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/http/pool/ConnFactory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 272
    .local v3, "conn":Ljava/lang/Object;, "TC;"
    invoke-virtual {v13, v3}, Lorg/apache/http/pool/RouteSpecificPool;->add(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v5

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v5

    .end local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v6    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    goto/16 :goto_2

    .line 252
    .end local v3    # "conn":Ljava/lang/Object;, "TC;"
    .end local v6    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v8    # "freeCapacity":I
    .end local v15    # "totalAvailable":I
    .end local v16    # "totalUsed":I
    .restart local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v9    # "i":I
    .restart local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_9
    :try_start_3
    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->close()V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v13, v10}, Lorg/apache/http/pool/RouteSpecificPool;->remove(Lorg/apache/http/pool/PoolEntry;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 278
    .end local v9    # "i":I
    .end local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_a
    const/4 v14, 0x0

    .line 280
    .local v14, "success":Z
    :try_start_4
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->queue(Lorg/apache/http/pool/PoolEntryFuture;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/apache/http/pool/PoolEntryFuture;->await(Ljava/util/Date;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v14

    .line 288
    :try_start_5
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->unqueue(Lorg/apache/http/pool/PoolEntryFuture;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 292
    if-nez v14, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_1

    .line 297
    .end local v7    # "excess":I
    .end local v11    # "maxPerRoute":I
    .end local v14    # "success":Z
    :cond_b
    new-instance v17, Ljava/util/concurrent/TimeoutException;

    const-string v18, "Timeout waiting for connection"

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 288
    .restart local v7    # "excess":I
    .restart local v11    # "maxPerRoute":I
    .restart local v14    # "success":Z
    :catchall_1
    move-exception v17

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->unqueue(Lorg/apache/http/pool/PoolEntryFuture;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private notifyPending(Lorg/apache/http/pool/RouteSpecificPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/RouteSpecificPool",
            "<TT;TC;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {p1}, Lorg/apache/http/pool/RouteSpecificPool;->nextPending()Lorg/apache/http/pool/PoolEntryFuture;

    move-result-object v0

    .line 305
    .local v0, "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    if-eqz v0, :cond_1

    .line 306
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 310
    :goto_0
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntryFuture;->wakeup()V

    .line 313
    :cond_0
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    check-cast v0, Lorg/apache/http/pool/PoolEntryFuture;

    .restart local v0    # "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    goto :goto_0
.end method


# virtual methods
.method public closeExpired()V
    .locals 3

    .prologue
    .line 499
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 500
    .local v0, "now":J
    new-instance v2, Lorg/apache/http/pool/AbstractConnPool$4;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/http/pool/AbstractConnPool$4;-><init>(Lorg/apache/http/pool/AbstractConnPool;J)V

    invoke-virtual {p0, v2}, Lorg/apache/http/pool/AbstractConnPool;->enumAvailable(Lorg/apache/http/pool/PoolEntryCallback;)V

    .line 509
    return-void
.end method

.method public closeIdle(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    const-string v4, "Time unit"

    invoke-static {p3, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 480
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 481
    const-wide/16 v2, 0x0

    .line 483
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 484
    .local v0, "deadline":J
    new-instance v4, Lorg/apache/http/pool/AbstractConnPool$3;

    invoke-direct {v4, p0, v0, v1}, Lorg/apache/http/pool/AbstractConnPool$3;-><init>(Lorg/apache/http/pool/AbstractConnPool;J)V

    invoke-virtual {p0, v4}, Lorg/apache/http/pool/AbstractConnPool;->enumAvailable(Lorg/apache/http/pool/PoolEntryCallback;)V

    .line 493
    return-void
.end method

.method protected abstract createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TC;)TE;"
        }
    .end annotation
.end method

.method protected enumAvailable(Lorg/apache/http/pool/PoolEntryCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntryCallback",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "callback":Lorg/apache/http/pool/PoolEntryCallback;, "Lorg/apache/http/pool/PoolEntryCallback<TT;TC;>;"
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 438
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/pool/AbstractConnPool;->enumEntries(Ljava/util/Iterator;Lorg/apache/http/pool/PoolEntryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 442
    return-void

    .line 440
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected enumLeased(Lorg/apache/http/pool/PoolEntryCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntryCallback",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "callback":Lorg/apache/http/pool/PoolEntryCallback;, "Lorg/apache/http/pool/PoolEntryCallback<TT;TC;>;"
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 452
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/pool/AbstractConnPool;->enumEntries(Ljava/util/Iterator;Lorg/apache/http/pool/PoolEntryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 456
    return-void

    .line 454
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 2

    .prologue
    .line 373
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 375
    :try_start_0
    iget v0, p0, Lorg/apache/http/pool/AbstractConnPool;->defaultMaxPerRoute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getMaxPerRoute(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const-string v0, "Route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 396
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/http/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 398
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getMaxTotal()I
    .locals 2

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    :try_start_0
    iget v0, p0, Lorg/apache/http/pool/AbstractConnPool;->maxTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/http/pool/PoolStats;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const-string v1, "Route"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 419
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;

    move-result-object v0

    .line 420
    .local v0, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    new-instance v1, Lorg/apache/http/pool/PoolStats;

    invoke-virtual {v0}, Lorg/apache/http/pool/RouteSpecificPool;->getLeasedCount()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/http/pool/RouteSpecificPool;->getPendingCount()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/http/pool/RouteSpecificPool;->getAvailableCount()I

    move-result v4

    invoke-direct {p0, p1}, Lorg/apache/http/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/http/pool/PoolStats;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .end local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public getTotalStats()Lorg/apache/http/pool/PoolStats;
    .locals 5

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 405
    :try_start_0
    new-instance v0, Lorg/apache/http/pool/PoolStats;

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/http/pool/AbstractConnPool;->maxTotal:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/pool/PoolStats;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-boolean v0, p0, Lorg/apache/http/pool/AbstractConnPool;->isShutDown:Z

    return v0
.end method

.method public lease(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 6
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TE;>;)",
            "Ljava/util/concurrent/Future",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lorg/apache/http/concurrent/FutureCallback;, "Lorg/apache/http/concurrent/FutureCallback<TE;>;"
    const-string v0, "Route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    iget-boolean v0, p0, Lorg/apache/http/pool/AbstractConnPool;->isShutDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection pool shut down"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 170
    new-instance v0, Lorg/apache/http/pool/AbstractConnPool$2;

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/pool/AbstractConnPool$2;-><init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/util/concurrent/locks/Lock;Lorg/apache/http/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLease(Lorg/apache/http/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    return-void
.end method

.method protected onRelease(Lorg/apache/http/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    check-cast p1, Lorg/apache/http/pool/PoolEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/pool/AbstractConnPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V

    return-void
.end method

.method public release(Lorg/apache/http/pool/PoolEntry;Z)V
    .locals 3
    .param p2, "reusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 318
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;

    move-result-object v0

    .line 320
    .local v0, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/pool/RouteSpecificPool;->free(Lorg/apache/http/pool/PoolEntry;Z)V

    .line 321
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lorg/apache/http/pool/AbstractConnPool;->isShutDown:Z

    if-nez v1, :cond_1

    .line 322
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/http/pool/AbstractConnPool;->onRelease(Lorg/apache/http/pool/PoolEntry;)V

    .line 327
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/http/pool/AbstractConnPool;->notifyPending(Lorg/apache/http/pool/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .end local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_0
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 332
    return-void

    .line 325
    .restart local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    .end local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    const-string v0, "Max per route value"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 364
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 366
    :try_start_0
    iput p1, p0, Lorg/apache/http/pool/AbstractConnPool;->defaultMaxPerRoute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 370
    return-void

    .line 368
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const-string v0, "Route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    const-string v0, "Max per route value"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 384
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 386
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setMaxTotal(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 344
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    const-string v0, "Max value"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 345
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 347
    :try_start_0
    iput p1, p0, Lorg/apache/http/pool/AbstractConnPool;->maxTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-boolean v3, p0, Lorg/apache/http/pool/AbstractConnPool;->isShutDown:Z

    if-eqz v3, :cond_0

    .line 141
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/http/pool/AbstractConnPool;->isShutDown:Z

    .line 124
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 126
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 127
    .local v0, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 139
    .end local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 129
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 130
    .restart local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->close()V

    goto :goto_2

    .line 132
    .end local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_2
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/pool/RouteSpecificPool;

    .line 133
    .local v2, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v2}, Lorg/apache/http/pool/RouteSpecificPool;->shutdown()V

    goto :goto_3

    .line 135
    .end local v2    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_3
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 136
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 137
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    const-string v1, "][pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
