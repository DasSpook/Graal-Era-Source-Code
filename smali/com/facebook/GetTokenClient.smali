.class final Lcom/facebook/GetTokenClient;
.super Ljava/lang/Object;
.source "GetTokenClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GetTokenClient$CompletedListener;
    }
.end annotation


# instance fields
.field final applicationId:Ljava/lang/String;

.field final context:Landroid/content/Context;

.field final handler:Landroid/os/Handler;

.field listener:Lcom/facebook/GetTokenClient$CompletedListener;

.field running:Z

.field sender:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .end local v0    # "applicationContext":Landroid/content/Context;
    :goto_0
    iput-object v0, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/facebook/GetTokenClient;->applicationId:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/facebook/GetTokenClient$1;

    invoke-direct {v1, p0}, Lcom/facebook/GetTokenClient$1;-><init>(Lcom/facebook/GetTokenClient;)V

    iput-object v1, p0, Lcom/facebook/GetTokenClient;->handler:Landroid/os/Handler;

    .line 46
    return-void

    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    move-object v0, p1

    .line 37
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/GetTokenClient;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/GetTokenClient;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/GetTokenClient;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private callback(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 114
    iget-boolean v1, p0, Lcom/facebook/GetTokenClient;->running:Z

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/GetTokenClient;->running:Z

    .line 119
    iget-object v0, p0, Lcom/facebook/GetTokenClient;->listener:Lcom/facebook/GetTokenClient$CompletedListener;

    .line 120
    .local v0, "callback":Lcom/facebook/GetTokenClient$CompletedListener;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/facebook/GetTokenClient$CompletedListener;->completed(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private getToken()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v4, p0, Lcom/facebook/GetTokenClient;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/high16 v3, 0x10000

    invoke-static {v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 89
    .local v2, "request":Landroid/os/Message;
    const v3, 0x133060d

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 90
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 91
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/facebook/GetTokenClient;->handler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v5}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x10001

    if-ne v2, v3, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 103
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "errorType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 105
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 111
    .end local v0    # "errorType":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 107
    .restart local v0    # "errorType":Ljava/lang/String;
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GetTokenClient;->running:Z

    .line 69
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 73
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;

    .line 74
    invoke-direct {p0}, Lcom/facebook/GetTokenClient;->getToken()V

    .line 75
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;

    .line 80
    iget-object v0, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    invoke-direct {p0, v1}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method setCompletedListener(Lcom/facebook/GetTokenClient$CompletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/GetTokenClient$CompletedListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/GetTokenClient;->listener:Lcom/facebook/GetTokenClient$CompletedListener;

    .line 50
    return-void
.end method

.method start()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v2, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/facebook/NativeProtocol;->validateKatanaServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    .line 59
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    .line 61
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/GetTokenClient;->running:Z

    .line 62
    iget-object v2, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
