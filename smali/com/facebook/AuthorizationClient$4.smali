.class Lcom/facebook/AuthorizationClient$4;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


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

.field final synthetic val$tokenPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$4;->this$0:Lcom/facebook/AuthorizationClient;

    iput-object p2, p0, Lcom/facebook/AuthorizationClient$4;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 321
    :try_start_0
    const-class v3, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p1, v3}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v2

    check-cast v2, Lcom/facebook/model/GraphMultiResult;

    .line 322
    .local v2, "result":Lcom/facebook/model/GraphMultiResult;
    if-eqz v2, :cond_0

    .line 323
    invoke-interface {v2}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 324
    .local v0, "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 325
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/model/GraphObject;

    .line 328
    .local v1, "permissions":Lcom/facebook/model/GraphObject;
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$4;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    .end local v1    # "permissions":Lcom/facebook/model/GraphObject;
    .end local v2    # "result":Lcom/facebook/model/GraphMultiResult;
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v3

    goto :goto_0
.end method
