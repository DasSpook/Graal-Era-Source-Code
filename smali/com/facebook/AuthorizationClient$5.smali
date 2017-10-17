.class Lcom/facebook/AuthorizationClient$5;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/RequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;

.field final synthetic val$fbids:Ljava/util/ArrayList;

.field final synthetic val$pendingResult:Lcom/facebook/AuthorizationClient$Result;

.field final synthetic val$tokenPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$5;->this$0:Lcom/facebook/AuthorizationClient;

    iput-object p2, p0, Lcom/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/AuthorizationClient$5;->val$pendingResult:Lcom/facebook/AuthorizationClient$Result;

    iput-object p4, p0, Lcom/facebook/AuthorizationClient$5;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/RequestBatch;)V
    .locals 6
    .param p1, "batch"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "result":Lcom/facebook/AuthorizationClient$Result;
    :try_start_0
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->val$pendingResult:Lcom/facebook/AuthorizationClient$Result;

    iget-object v3, v3, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    iget-object v4, p0, Lcom/facebook/AuthorizationClient$5;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/facebook/AccessToken;->createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v2

    .line 350
    .local v2, "tokenWithPermissions":Lcom/facebook/AccessToken;
    invoke-static {v2}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v1

    .line 355
    .end local v2    # "tokenWithPermissions":Lcom/facebook/AccessToken;
    :goto_0
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v3, v1}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-static {v3}, Lcom/facebook/AuthorizationClient;->access$000(Lcom/facebook/AuthorizationClient;)V

    .line 361
    :goto_1
    return-void

    .line 352
    :cond_0
    :try_start_1
    const-string v3, "User logged in as different Facebook user."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->this$0:Lcom/facebook/AuthorizationClient;

    const-string v4, "Caught exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$5;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-static {v3}, Lcom/facebook/AuthorizationClient;->access$000(Lcom/facebook/AuthorizationClient;)V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/facebook/AuthorizationClient$5;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-static {v4}, Lcom/facebook/AuthorizationClient;->access$000(Lcom/facebook/AuthorizationClient;)V

    throw v3
.end method
