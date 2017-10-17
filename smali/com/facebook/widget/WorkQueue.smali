.class Lcom/facebook/widget/WorkQueue;
.super Ljava/lang/Object;
.source "WorkQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/WorkQueue$WorkItem;,
        Lcom/facebook/widget/WorkQueue$WorkNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_MAX_CONCURRENT:I = 0x8


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final maxConcurrent:I

.field private pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

.field private runningCount:I

.field private runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

.field private final workLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/widget/WorkQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/widget/WorkQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/widget/WorkQueue;-><init>(I)V

    .line 37
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "maxConcurrent"    # I

    .prologue
    .line 40
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/WorkQueue;-><init>(ILjava/util/concurrent/Executor;)V

    .line 41
    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "maxConcurrent"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    .line 44
    iput p1, p0, Lcom/facebook/widget/WorkQueue;->maxConcurrent:I

    .line 45
    iput-object p2, p0, Lcom/facebook/widget/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/WorkQueue;
    .param p1, "x1"    # Lcom/facebook/widget/WorkQueue$WorkNode;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/widget/WorkQueue;->finishItemAndStartNew(Lcom/facebook/widget/WorkQueue$WorkNode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/WorkQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/WorkQueue;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/WorkQueue;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/WorkQueue;
    .param p1, "x1"    # Lcom/facebook/widget/WorkQueue$WorkNode;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    return-object p1
.end method

.method private execute(Lcom/facebook/widget/WorkQueue$WorkNode;)V
    .locals 2
    .param p1, "node"    # Lcom/facebook/widget/WorkQueue$WorkNode;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/widget/WorkQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/widget/WorkQueue$1;-><init>(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method private finishItemAndStartNew(Lcom/facebook/widget/WorkQueue$WorkNode;)V
    .locals 4
    .param p1, "finished"    # Lcom/facebook/widget/WorkQueue$WorkNode;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "ready":Lcom/facebook/widget/WorkQueue$WorkNode;
    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v2

    .line 88
    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-virtual {p1, v1}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 90
    iget v1, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    .line 93
    :cond_0
    iget v1, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    iget v3, p0, Lcom/facebook/widget/WorkQueue;->maxConcurrent:I

    if-ge v1, v3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 95
    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 100
    iget-object v1, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/facebook/widget/WorkQueue$WorkNode;->addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 101
    iget v1, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WorkQueue$WorkNode;->setIsRunning(Z)V

    .line 106
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0, v0}, Lcom/facebook/widget/WorkQueue;->execute(Lcom/facebook/widget/WorkQueue$WorkNode;)V

    .line 111
    :cond_2
    return-void

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startItem()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/WorkQueue;->finishItemAndStartNew(Lcom/facebook/widget/WorkQueue$WorkNode;)V

    .line 82
    return-void
.end method


# virtual methods
.method addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/widget/WorkQueue$WorkItem;
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/widget/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/widget/WorkQueue$WorkItem;

    move-result-object v0

    return-object v0
.end method

.method addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/widget/WorkQueue$WorkItem;
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "addToFront"    # Z

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-direct {v0, p0, p1}, Lcom/facebook/widget/WorkQueue$WorkNode;-><init>(Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V

    .line 54
    .local v0, "node":Lcom/facebook/widget/WorkQueue$WorkNode;
    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v2

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/widget/WorkQueue$WorkNode;->addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 56
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-direct {p0}, Lcom/facebook/widget/WorkQueue;->startItem()V

    .line 59
    return-object v0

    .line 56
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method validate()V
    .locals 4

    .prologue
    .line 63
    iget-object v3, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eqz v2, :cond_1

    .line 68
    iget-object v1, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 70
    .local v1, "walk":Lcom/facebook/widget/WorkQueue$WorkNode;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->verify(Z)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    invoke-virtual {v1}, Lcom/facebook/widget/WorkQueue$WorkNode;->getNext()Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-ne v1, v2, :cond_0

    .line 76
    .end local v1    # "walk":Lcom/facebook/widget/WorkQueue$WorkNode;
    :cond_1
    sget-boolean v2, Lcom/facebook/widget/WorkQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    if-eq v2, v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 77
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    return-void
.end method
