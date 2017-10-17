.class Lcom/quattroplay/GraalEra/QPlayActivity$11$1;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity$11;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 12
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 903
    if-nez p2, :cond_0

    move v5, v6

    .line 904
    .local v5, "success":Z
    :goto_0
    const-string v4, ""

    .line 905
    .local v4, "resulturl":Ljava/lang/String;
    const-string v3, ""

    .line 906
    .local v3, "resultlist":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 907
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 908
    .local v1, "key":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v8, ","

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v9, v9, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v9, v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v9, v9, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "resultlist":Ljava/lang/String;
    .end local v4    # "resulturl":Ljava/lang/String;
    .end local v5    # "success":Z
    :cond_0
    move v5, v7

    .line 903
    goto :goto_0

    .line 908
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "resultlist":Ljava/lang/String;
    .restart local v4    # "resulturl":Ljava/lang/String;
    .restart local v5    # "success":Z
    :cond_1
    const-string v8, ""

    goto :goto_2

    .line 910
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v9, v9, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v10, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v10, v10, Lcom/quattroplay/GraalEra/QPlayActivity$11;->val$faction:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v9, v9, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v8, v6, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-static {v8, v6}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v7, v7, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v7, v4}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;->this$1:Lcom/quattroplay/GraalEra/QPlayActivity$11;

    iget-object v7, v7, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v7, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    .local v2, "res":Ljava/lang/String;
    sget-boolean v6, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v6, :cond_3

    .line 913
    const-string v6, "onFaceBookWebShare"

    invoke-static {v6, v2}, Lcom/quattroplay/GraalEra/Natives;->onInvokeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_3
    return-void

    .end local v2    # "res":Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 910
    goto :goto_3

    :cond_5
    const-string v6, ""

    goto :goto_4
.end method
