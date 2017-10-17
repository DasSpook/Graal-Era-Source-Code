.class public Lcom/threed/jpct/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x0

.field private static final HEAD:[Ljava/lang/String;

.field public static final LL_DEBUG:I = 0x3

.field public static final LL_ERRORS_AND_WARNINGS:I = 0x1

.field public static final LL_ONLY_ERRORS:I = 0x0

.field public static final LL_VERBOSE:I = 0x2

.field public static final MESSAGE:I = 0x2

.field public static final ON_ERROR_EXIT:I = 0x1

.field public static final ON_ERROR_RESUME_NEXT:I = 0x0

.field public static final ON_ERROR_THROW_EXCEPTION:I = 0x2

.field public static final WARNING:I = 0x1

.field private static logHandler:Lcom/threed/jpct/LogHandler;

.field private static logLevel:I

.field private static mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 70
    sput v3, Lcom/threed/jpct/Logger;->mode:I

    .line 72
    sput v3, Lcom/threed/jpct/Logger;->logLevel:I

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/Logger;->logHandler:Lcom/threed/jpct/LogHandler;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ERROR: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WARNING: "

    aput-object v2, v0, v1

    const-string v1, "MESSAGE: "

    aput-object v1, v0, v3

    sput-object v0, Lcom/threed/jpct/Logger;->HEAD:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogHandler()Lcom/threed/jpct/LogHandler;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/threed/jpct/Logger;->logHandler:Lcom/threed/jpct/LogHandler;

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/threed/jpct/Logger;->logLevel:I

    return v0
.end method

.method static getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/threed/jpct/Logger$1;

    invoke-direct {v0}, Lcom/threed/jpct/Logger$1;-><init>()V

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 2

    .prologue
    .line 157
    sget v0, Lcom/threed/jpct/Logger;->logLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public static log(Ljava/lang/String;I)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 175
    sget v2, Lcom/threed/jpct/Logger;->logLevel:I

    if-gt p1, v2, :cond_3

    .line 177
    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 178
    :cond_0
    const/4 p1, 0x3

    .line 180
    :cond_1
    if-ge p1, v5, :cond_2

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/threed/jpct/Logger;->HEAD:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_2
    sget-object v2, Lcom/threed/jpct/Logger;->logHandler:Lcom/threed/jpct/LogHandler;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/threed/jpct/Logger;->logHandler:Lcom/threed/jpct/LogHandler;

    invoke-interface {v2, p0, p1}, Lcom/threed/jpct/LogHandler;->log(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    .line 185
    .local v0, "logThis":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 186
    const-string v2, "jPCT-AE"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-nez p1, :cond_3

    .line 189
    sget v2, Lcom/threed/jpct/Logger;->mode:I

    if-ne v2, v1, :cond_5

    .line 190
    const/16 v1, -0x63

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 199
    .end local v0    # "logThis":Z
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 184
    goto :goto_0

    .line 192
    .restart local v0    # "logThis":Z
    :cond_5
    sget v1, Lcom/threed/jpct/Logger;->mode:I

    if-ne v1, v5, :cond_3

    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tw"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public static log(Ljava/lang/Throwable;I)V
    .locals 1
    .param p0, "tw"    # Ljava/lang/Throwable;
    .param p1, "type"    # I

    .prologue
    .line 150
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public static setLogHandler(Lcom/threed/jpct/LogHandler;)V
    .locals 0
    .param p0, "logHandler"    # Lcom/threed/jpct/LogHandler;

    .prologue
    .line 261
    sput-object p0, Lcom/threed/jpct/Logger;->logHandler:Lcom/threed/jpct/LogHandler;

    .line 262
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 104
    sput p0, Lcom/threed/jpct/Logger;->logLevel:I

    .line 105
    return-void
.end method

.method public static setOnError(I)V
    .locals 0
    .param p0, "mode"    # I

    .prologue
    .line 90
    sput p0, Lcom/threed/jpct/Logger;->mode:I

    .line 91
    return-void
.end method
