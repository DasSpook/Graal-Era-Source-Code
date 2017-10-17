.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "TapjoyLog.java"


# static fields
.field private static final MAX_STRING_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "TapjoyLog"

.field private static logHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static saveLog:Z

.field private static showLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    .line 17
    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLogHistory()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 138
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 29
    const-string v0, "TapjoyLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLogging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    .line 31
    return-void
.end method

.method public static getLogHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-boolean v3, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1000

    if-le v3, v4, :cond_1

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit16 v3, v3, 0x1000

    if-gt v1, v3, :cond_2

    .line 83
    mul-int/lit16 v2, v1, 0x1000

    .line 84
    .local v2, "start":I
    add-int/lit8 v3, v1, 0x1

    mul-int/lit16 v0, v3, 0x1000

    .line 85
    .local v0, "end":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 86
    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    sget-boolean v3, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v3, :cond_3

    .line 96
    sget-object v3, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    return-void
.end method

.method public static saveLogHistory(Z)V
    .locals 2
    .param p0, "save"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    .line 41
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    return-void
.end method
