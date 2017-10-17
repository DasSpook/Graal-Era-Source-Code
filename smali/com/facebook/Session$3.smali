.class Lcom/facebook/Session$3;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$newState:Lcom/facebook/SessionState;


# direct methods
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;

    iput-object p2, p0, Lcom/facebook/Session$3;->val$newState:Lcom/facebook/SessionState;

    iput-object p3, p0, Lcom/facebook/Session$3;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1186
    iget-object v3, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;

    invoke-static {v3}, Lcom/facebook/Session;->access$300(Lcom/facebook/Session;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session$StatusCallback;

    .line 1187
    .local v0, "callback":Lcom/facebook/Session$StatusCallback;
    new-instance v1, Lcom/facebook/Session$3$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/Session$3$1;-><init>(Lcom/facebook/Session$3;Lcom/facebook/Session$StatusCallback;)V

    .line 1194
    .local v1, "closure":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;

    invoke-static {v3}, Lcom/facebook/Session;->access$400(Lcom/facebook/Session;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/facebook/Session;->access$500(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1196
    .end local v0    # "callback":Lcom/facebook/Session$StatusCallback;
    .end local v1    # "closure":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
