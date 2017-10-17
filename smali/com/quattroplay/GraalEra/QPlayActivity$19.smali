.class Lcom/quattroplay/GraalEra/QPlayActivity$19;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->setWebViewVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$fvalue:Z

.field final synthetic val$fviewid:I


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;IZ)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$19;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$19;->val$fviewid:I

    iput-boolean p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$19;->val$fvalue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$19;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$800(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$19;->val$fviewid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1149
    .local v0, "view":Landroid/webkit/WebView;
    if-nez v0, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$19;->val$fvalue:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1152
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$19;->val$fvalue:Z

    if-eqz v1, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    goto :goto_0

    .line 1151
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
