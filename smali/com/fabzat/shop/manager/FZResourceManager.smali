.class public Lcom/fabzat/shop/manager/FZResourceManager;
.super Ljava/lang/Object;
.source "FZResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static cK:Lcom/fabzat/shop/manager/FZResourceManager;


# instance fields
.field private aG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZ3DResource;",
            ">;"
        }
    .end annotation
.end field

.field private cL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private cM:I

.field private cN:Lcom/fabzat/shop/model/FZResourceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fabzat/shop/manager/FZResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/manager/FZResourceManager;->LOG_TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/fabzat/shop/model/FZResourceState;->NOT_DEFINED:Lcom/fabzat/shop/model/FZResourceState;

    iput-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cN:Lcom/fabzat/shop/model/FZResourceState;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cM:I

    .line 36
    return-void
.end method

.method private O()V
    .locals 6

    .prologue
    .line 98
    iget-object v2, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 99
    iget-object v3, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    monitor-exit v3

    .line 114
    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v1, "listener":Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;
    :try_start_1
    iget-object v4, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cN:Lcom/fabzat/shop/model/FZResourceState;

    invoke-interface {v1, v4}, Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;->onStateChanged(Lcom/fabzat/shop/model/FZResourceState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    sget-object v4, Lcom/fabzat/shop/manager/FZResourceManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ResourceStateChangeListener error. Have unused callbacks been removed?"

    invoke-static {v4, v5}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static synthetic a(Lcom/fabzat/shop/manager/FZResourceManager;Lcom/fabzat/shop/model/FZResourceState;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/fabzat/shop/manager/FZResourceManager;->b(Lcom/fabzat/shop/model/FZResourceState;)V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/manager/FZResourceManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    return-void
.end method

.method private b(Lcom/fabzat/shop/model/FZResourceState;)V
    .locals 1
    .param p1, "newState"    # Lcom/fabzat/shop/model/FZResourceState;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cN:Lcom/fabzat/shop/model/FZResourceState;

    if-ne p1, v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cN:Lcom/fabzat/shop/model/FZResourceState;

    .line 161
    invoke-direct {p0}, Lcom/fabzat/shop/manager/FZResourceManager;->O()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/fabzat/shop/manager/FZResourceManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/fabzat/shop/manager/FZResourceManager;->cK:Lcom/fabzat/shop/manager/FZResourceManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/fabzat/shop/manager/FZResourceManager;

    invoke-direct {v0}, Lcom/fabzat/shop/manager/FZResourceManager;-><init>()V

    sput-object v0, Lcom/fabzat/shop/manager/FZResourceManager;->cK:Lcom/fabzat/shop/manager/FZResourceManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/fabzat/shop/manager/FZResourceManager;->cK:Lcom/fabzat/shop/manager/FZResourceManager;

    return-object v0
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/fabzat/shop/manager/FZResourceManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cN:Lcom/fabzat/shop/model/FZResourceState;

    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->NOT_DEFINED:Lcom/fabzat/shop/model/FZResourceState;

    if-ne v0, v1, :cond_2

    .line 76
    sget-object v0, Lcom/fabzat/shop/manager/FZResourceManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Resources are not defined. Have you called setRessources or setDistantRessources?"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    return-void

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZ3DResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedResource()Lcom/fabzat/shop/model/FZ3DResource;
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cM:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    iget v1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cM:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZ3DResource;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/fabzat/shop/model/FZResourceState;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cN:Lcom/fabzat/shop/model/FZResourceState;

    return-object v0
.end method

.method public hasSingleResource()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 234
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadLocalResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZ3DResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZ3DResource;>;"
    sget-object v0, Lcom/fabzat/shop/model/FZResourceState;->LOADING:Lcom/fabzat/shop/model/FZResourceState;

    invoke-direct {p0, v0}, Lcom/fabzat/shop/manager/FZResourceManager;->b(Lcom/fabzat/shop/model/FZResourceState;)V

    .line 224
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    .line 225
    sget-object v0, Lcom/fabzat/shop/model/FZResourceState;->LOADED:Lcom/fabzat/shop/model/FZResourceState;

    invoke-direct {p0, v0}, Lcom/fabzat/shop/manager/FZResourceManager;->b(Lcom/fabzat/shop/model/FZResourceState;)V

    .line 226
    return-void
.end method

.method public loadRemoteResources(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remotePath"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v0, Lcom/fabzat/shop/model/FZResourceState;->LOADING:Lcom/fabzat/shop/model/FZResourceState;

    invoke-direct {p0, v0}, Lcom/fabzat/shop/manager/FZResourceManager;->b(Lcom/fabzat/shop/model/FZResourceState;)V

    .line 173
    new-instance v0, Lcom/fabzat/shop/dao/FZWebServiceGet;

    invoke-direct {v0, p1, p2}, Lcom/fabzat/shop/dao/FZWebServiceGet;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/fabzat/shop/dao/FZWebServiceGet;->doNotReconnect()Lcom/fabzat/shop/dao/FZWebServiceGet;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/fabzat/shop/dao/FZWebServiceGet;->noSSL()Lcom/fabzat/shop/dao/FZWebServiceGet;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/fabzat/shop/manager/FZResourceManager$1;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/manager/FZResourceManager$1;-><init>(Lcom/fabzat/shop/manager/FZResourceManager;)V

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/dao/FZWebServiceGet;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServiceGet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 215
    invoke-virtual {v0, v1}, Lcom/fabzat/shop/dao/FZWebServiceGet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-void
.end method

.method public removeListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    monitor-exit v1

    .line 90
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedresource(Lcom/fabzat/shop/model/FZ3DResource;)V
    .locals 1
    .param p1, "_res"    # Lcom/fabzat/shop/model/FZ3DResource;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->aG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/fabzat/shop/manager/FZResourceManager;->cM:I

    .line 133
    :cond_0
    return-void
.end method
