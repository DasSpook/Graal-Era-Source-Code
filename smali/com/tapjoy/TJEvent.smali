.class public Lcom/tapjoy/TJEvent;
.super Ljava/lang/Object;
.source "TJEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TJEvent"


# instance fields
.field private autoShowContent:Z

.field private callback:Lcom/tapjoy/TJEventCallback;

.field private contentAvailable:Z

.field private contentShown:Z

.field private context:Landroid/content/Context;

.field private eventData:Lcom/tapjoy/TJEventData;

.field private eventParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJEventCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/tapjoy/TJEventCallback;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tapjoy/TJEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJEventCallback;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJEventCallback;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "cb"    # Lcom/tapjoy/TJEventCallback;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/tapjoy/TJEvent;->contentShown:Z

    .line 45
    iput-boolean v0, p0, Lcom/tapjoy/TJEvent;->contentAvailable:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJEvent;->autoShowContent:Z

    .line 74
    iput-object p1, p0, Lcom/tapjoy/TJEvent;->context:Landroid/content/Context;

    .line 75
    iput-object p4, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    .line 77
    new-instance v0, Lcom/tapjoy/TJEventData;

    invoke-direct {v0}, Lcom/tapjoy/TJEventData;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    .line 78
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iput-object p2, v0, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iput-object p3, v0, Lcom/tapjoy/TJEventData;->value:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v0, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v0, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tapjoy/TJEventManager;->put(Ljava/lang/String;Lcom/tapjoy/TJEvent;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tapjoy/TJEvent;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->urlParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TJEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/tapjoy/TJEvent;->contentAvailable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tapjoy/TJEvent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJEvent;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/tapjoy/TJEvent;->contentAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tapjoy/TJEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/tapjoy/TJEvent;->autoShowContent:Z

    return v0
.end method


# virtual methods
.method public enableAutoPresent(Z)V
    .locals 0
    .param p1, "autoPresent"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/tapjoy/TJEvent;->autoShowContent:Z

    .line 112
    return-void
.end method

.method public getCallback()Lcom/tapjoy/TJEventCallback;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v0, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v0, v0, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 139
    iput-boolean v5, p0, Lcom/tapjoy/TJEvent;->contentShown:Z

    .line 142
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    if-nez v1, :cond_0

    .line 144
    const-string v1, "TJEvent"

    const-string v2, "TJEventSendCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 150
    :cond_1
    const-string v1, "TJEvent"

    const-string v2, "ERROR -- SDK not initialized -- requestTapjoyConnect must be called first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    new-instance v2, Lcom/tapjoy/TJError;

    const-string v3, "SDK not initialized -- requestTapjoyConnect must be called first"

    invoke-direct {v2, v5, v3}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lcom/tapjoy/TJEventCallback;->sendEventFail(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJError;)V

    .line 239
    :cond_2
    :goto_0
    return-void

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->context:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    new-instance v2, Lcom/tapjoy/TJError;

    const-string v3, "Context is null -- TJEvent requires a valid Context."

    invoke-direct {v2, v5, v3}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lcom/tapjoy/TJEventCallback;->sendEventFail(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJError;)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v1, v1, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v1, v1, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    new-instance v2, Lcom/tapjoy/TJError;

    const-string v3, "Invalid eventName -- TJEvent requires a valid eventName."

    invoke-direct {v2, v5, v3}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lcom/tapjoy/TJEventCallback;->sendEventFail(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJError;)V

    goto :goto_0

    .line 175
    :cond_6
    const-string v0, "https://events.tapjoy.com/events?"

    .line 176
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJEvent;->urlParams:Ljava/util/Map;

    .line 178
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventParams:Ljava/util/Map;

    if-nez v1, :cond_7

    .line 180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TJEvent;->eventParams:Ljava/util/Map;

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventParams:Ljava/util/Map;

    const-string v2, "event_name"

    iget-object v3, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v3, v3, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventParams:Ljava/util/Map;

    const-string v2, "event_value"

    iget-object v3, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v3, v3, Lcom/tapjoy/TJEventData;->value:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->urlParams:Ljava/util/Map;

    iget-object v2, p0, Lcom/tapjoy/TJEvent;->eventParams:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 187
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->urlParams:Ljava/util/Map;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 189
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iput-object v0, v1, Lcom/tapjoy/TJEventData;->url:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    const/16 v2, 0x2f

    const-string v3, "//"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "//"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/TJEventData;->baseURL:Ljava/lang/String;

    .line 193
    new-instance v1, Lcom/tapjoy/TJEvent$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJEvent$1;-><init>(Lcom/tapjoy/TJEvent;)V

    invoke-virtual {v1}, Lcom/tapjoy/TJEvent$1;->start()V

    goto/16 :goto_0
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tapjoy/TJEvent;->eventParams:Ljava/util/Map;

    .line 248
    return-void
.end method

.method public showContent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 257
    iget-boolean v1, p0, Lcom/tapjoy/TJEvent;->contentAvailable:Z

    if-nez v1, :cond_0

    .line 259
    const-string v1, "TJEvent"

    const-string v2, "cannot show content for non-200 send event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->callback:Lcom/tapjoy/TJEventCallback;

    if-nez v1, :cond_1

    .line 266
    const-string v1, "TJEvent"

    const-string v2, "TJEventShowCallback cb is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_1
    iget-boolean v1, p0, Lcom/tapjoy/TJEvent;->contentShown:Z

    if-eqz v1, :cond_2

    .line 273
    const-string v1, "TJEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content has already been shown for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v3, v3, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_2
    const/4 v0, 0x0

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v1, v1, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    const-string v2, "tj_legacy_featured_ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventParams:Ljava/util/Map;

    const-string v2, "featured_app_legacy"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1
    const-string v1, "legacy_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    :goto_2
    iput-boolean v3, p0, Lcom/tapjoy/TJEvent;->contentShown:Z

    .line 311
    const-string v1, "view_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "tjevent"

    iget-object v2, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyFullScreenAdWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 298
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v1, v1, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    const-string v2, "tj_legacy_reengagement_rewards"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyDailyRewardAdWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "legacy_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 306
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tapjoy/TJEvent;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method
