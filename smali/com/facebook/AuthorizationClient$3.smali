.class Lcom/facebook/AuthorizationClient$3;
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

.field final synthetic val$fbids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$3;->this$0:Lcom/facebook/AuthorizationClient;

    iput-object p2, p0, Lcom/facebook/AuthorizationClient$3;->val$fbids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 300
    :try_start_0
    const-class v1, Lcom/facebook/model/GraphUser;

    invoke-virtual {p1, v1}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphUser;

    .line 301
    .local v0, "user":Lcom/facebook/model/GraphUser;
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$3;->val$fbids:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "user":Lcom/facebook/model/GraphUser;
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v1

    goto :goto_0
.end method
