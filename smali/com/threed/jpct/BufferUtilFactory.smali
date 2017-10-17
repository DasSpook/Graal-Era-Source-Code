.class Lcom/threed/jpct/BufferUtilFactory;
.super Ljava/lang/Object;
.source "BufferUtilFactory.java"


# static fields
.field private static nativeSupport:Z

.field private static util:Lcom/threed/jpct/BufferUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 10
    sput-boolean v7, Lcom/threed/jpct/BufferUtilFactory;->nativeSupport:Z

    .line 11
    const/4 v5, 0x0

    sput-object v5, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    .line 15
    :try_start_0
    sget-boolean v5, Lcom/threed/jpct/Config;->disableNativeBufferCopies:Z

    if-eqz v5, :cond_0

    .line 16
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Troet!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/threed/jpct/BufferUtilFactory;->nativeSupport:Z

    .line 31
    new-instance v5, Lcom/threed/jpct/BufferUtilVM;

    invoke-direct {v5}, Lcom/threed/jpct/BufferUtilVM;-><init>()V

    sput-object v5, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    .line 32
    const-string v5, "Troet!"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    const-string v5, "Using vm based buffer copies!"

    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 8
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 18
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    const-string v5, "com.badlogic.gdx.utils.BufferUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 21
    .local v4, "tmp":Ljava/lang/Object;
    const/4 v5, 0x1

    sput-boolean v5, Lcom/threed/jpct/BufferUtilFactory;->nativeSupport:Z

    .line 22
    const-string v5, "com.threed.jpct.BufferUtilNative"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/threed/jpct/BufferUtil;

    sput-object v5, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    .line 24
    const-string v5, "gdx"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/threed/jpct/FloatBufferWrapper;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    .line 26
    .local v1, "dest":Lcom/threed/jpct/FloatBufferWrapper;
    const/4 v5, 0x2

    new-array v3, v5, [F

    .line 27
    .local v3, "src":[F
    sget-object v5, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    invoke-interface {v5, v3, v1}, Lcom/threed/jpct/BufferUtil;->copy([FLcom/threed/jpct/FloatBufferWrapper;)V

    .line 28
    const-string v5, "Using native buffer copies!"

    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 35
    .end local v1    # "dest":Lcom/threed/jpct/FloatBufferWrapper;
    .end local v3    # "src":[F
    .end local v4    # "tmp":Ljava/lang/Object;
    .restart local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    const-string v5, "Native buffer copies disabled!"

    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBufferUtil()Lcom/threed/jpct/BufferUtil;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    return-object v0
.end method

.method static hasNativeSupport()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/threed/jpct/BufferUtilFactory;->nativeSupport:Z

    return v0
.end method
