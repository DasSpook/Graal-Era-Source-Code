.class Lcom/quattroplay/GraalEra/QPlayActivity$10$1;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/quattroplay/GraalEra/QPlayActivity$10;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity$10;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$10;

    iget-object v3, v3, Lcom/quattroplay/GraalEra/QPlayActivity$10;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$10;

    iget-object v4, v4, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$furl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "res":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 824
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$10;

    iget-object v3, v3, Lcom/quattroplay/GraalEra/QPlayActivity$10;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 826
    :cond_0
    sget-boolean v2, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v2, :cond_1

    .line 827
    const-string v2, "onNewFaceBookGraph"

    invoke-static {v2, v1}, Lcom/quattroplay/GraalEra/Natives;->onInvokeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_1
    return-void
.end method
