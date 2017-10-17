.class Lcom/facebook/widget/WorkQueue$WorkNode;
.super Ljava/lang/Object;
.source "WorkQueue.java"

# interfaces
.implements Lcom/facebook/widget/WorkQueue$WorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private isRunning:Z

.field private next:Lcom/facebook/widget/WorkQueue$WorkNode;

.field private prev:Lcom/facebook/widget/WorkQueue$WorkNode;

.field final synthetic this$0:Lcom/facebook/widget/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/facebook/widget/WorkQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    .line 134
    return-void
.end method


# virtual methods
.method addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 2
    .param p1, "list"    # Lcom/facebook/widget/WorkQueue$WorkNode;
    .param p2, "addToFront"    # Z

    .prologue
    .line 176
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_1
    if-nez p1, :cond_2

    .line 180
    iput-object p0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object p0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    move-object p1, p0

    .line 187
    :goto_0
    if-eqz p2, :cond_3

    .end local p0    # "this":Lcom/facebook/widget/WorkQueue$WorkNode;
    :goto_1
    return-object p0

    .line 182
    .restart local p0    # "this":Lcom/facebook/widget/WorkQueue$WorkNode;
    :cond_2
    iput-object p1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 183
    iget-object v0, p1, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 184
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object p0, v1, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object p0, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    goto :goto_0

    :cond_3
    move-object p0, p1

    .line 187
    goto :goto_1
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    invoke-static {v0}, Lcom/facebook/widget/WorkQueue;->access$100(Lcom/facebook/widget/WorkQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    invoke-static {v2}, Lcom/facebook/widget/WorkQueue;->access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/widget/WorkQueue;->access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 141
    const/4 v0, 0x1

    monitor-exit v1

    .line 145
    :goto_0
    return v0

    .line 143
    :cond_0
    monitor-exit v1

    .line 145
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method getNext()Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning:Z

    return v0
.end method

.method public moveToFront()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    invoke-static {v0}, Lcom/facebook/widget/WorkQueue;->access$100(Lcom/facebook/widget/WorkQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    invoke-static {v2}, Lcom/facebook/widget/WorkQueue;->access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/widget/WorkQueue;->access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 153
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    invoke-static {v2}, Lcom/facebook/widget/WorkQueue;->access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/widget/WorkQueue$WorkNode;->addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/widget/WorkQueue;->access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 155
    :cond_0
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 2
    .param p1, "list"    # Lcom/facebook/widget/WorkQueue$WorkNode;

    .prologue
    .line 191
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_0
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_1
    if-ne p1, p0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-ne v0, p0, :cond_3

    .line 196
    const/4 p1, 0x0

    .line 202
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v1, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 203
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v1, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    .line 206
    return-object p1

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    goto :goto_0
.end method

.method setIsRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning:Z

    .line 173
    return-void
.end method

.method verify(Z)V
    .locals 1
    .param p1, "shouldBeRunning"    # Z

    .prologue
    .line 210
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v0, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_0
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v0, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 212
    :cond_1
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning()Z

    move-result v0

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 213
    :cond_2
    return-void
.end method
