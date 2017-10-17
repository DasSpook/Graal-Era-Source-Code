.class Lcom/quattroplay/GraalEra/QPlayActivity$17;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->deleteWebView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$fviewid:I


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;I)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$17;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$17;->val$fviewid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1115
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$17;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$800(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$17;->val$fviewid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 1116
    .local v1, "view":Landroid/webkit/WebView;
    if-nez v1, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1118
    :cond_0
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$17;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$800(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$17;->val$fviewid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1120
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$17;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const v3, 0x7f050072

    invoke-virtual {v2, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1121
    .local v0, "layout":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1122
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0
.end method
