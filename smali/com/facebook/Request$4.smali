.class final Lcom/facebook/Request$4;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Ljava/util/ArrayList;

.field final synthetic val$requests:Lcom/facebook/RequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1239
    iget-object v4, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1240
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/Request$Callback;Lcom/facebook/Response;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/Request$Callback;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/Response;

    invoke-interface {v4, v5}, Lcom/facebook/Request$Callback;->onCompleted(Lcom/facebook/Response;)V

    goto :goto_0

    .line 1243
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/Request$Callback;Lcom/facebook/Response;>;"
    :cond_0
    iget-object v4, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v4}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v1

    .line 1244
    .local v1, "batchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/RequestBatch$Callback;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/RequestBatch$Callback;

    .line 1245
    .local v0, "batchCallback":Lcom/facebook/RequestBatch$Callback;
    iget-object v4, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-interface {v0, v4}, Lcom/facebook/RequestBatch$Callback;->onBatchCompleted(Lcom/facebook/RequestBatch;)V

    goto :goto_1

    .line 1247
    .end local v0    # "batchCallback":Lcom/facebook/RequestBatch$Callback;
    :cond_1
    return-void
.end method
