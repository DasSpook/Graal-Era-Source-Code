.class Lcom/facebook/Session$TokenRefreshRequest;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenRefreshRequest"
.end annotation


# instance fields
.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .locals 3

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/Session$TokenRefreshRequestHandler;

    iget-object v2, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {v1, v2, p0}, Lcom/facebook/Session$TokenRefreshRequestHandler;-><init>(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/Session$TokenRefreshRequest;

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-static {v0}, Lcom/facebook/Session;->access$700(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/Session;->access$702(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;

    .line 1320
    :cond_0
    return-void
.end method

.method private refreshToken()V
    .locals 5

    .prologue
    .line 1323
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1324
    .local v2, "requestData":Landroid/os/Bundle;
    const-string v3, "access_token"

    iget-object v4, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-virtual {v4}, Lcom/facebook/Session;->getTokenInfo()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1327
    .local v1, "request":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1328
    iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1331
    :try_start_0
    iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 4

    .prologue
    .line 1292
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/NativeProtocol;->createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1293
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->access$600()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/Session$TokenRefreshRequest;

    iget-object v3, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {v2, v3}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    .line 1299
    :goto_0
    return-void

    .line 1297
    :cond_0
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1303
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    .line 1304
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->refreshToken()V

    .line 1305
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "arg"    # Landroid/content/ComponentName;

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    .line 1313
    invoke-static {}, Lcom/facebook/Session;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1314
    return-void
.end method
