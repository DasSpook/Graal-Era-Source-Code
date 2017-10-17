.class Lcom/quattroplay/GraalEra/QPlayActivity$9;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->loginToNewFacebook(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 696
    sget-boolean v2, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v2, :cond_0

    .line 697
    const-string v2, "onNewFaceBookState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v4, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$300(Lcom/quattroplay/GraalEra/QPlayActivity;Lcom/facebook/SessionState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quattroplay/GraalEra/Natives;->onInvokeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$400(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 700
    const/4 v1, 0x1

    .line 701
    .local v1, "success":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$400(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 702
    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$400(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 703
    const/4 v1, 0x0

    .line 701
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_2
    sget-boolean v2, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v2, :cond_3

    .line 707
    const-string v3, "onNewFaceBookRights"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iget-object v5, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v5}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$500(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_5

    const-string v2, "1"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/quattroplay/GraalEra/Natives;->onInvokeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_3
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$402(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 709
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$9;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$502(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 711
    .end local v0    # "i":I
    .end local v1    # "success":Z
    :cond_4
    return-void

    .line 707
    .restart local v0    # "i":I
    .restart local v1    # "success":Z
    :cond_5
    const-string v2, "0"

    goto :goto_1
.end method
