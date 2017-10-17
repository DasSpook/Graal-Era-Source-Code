.class Lcom/quattroplay/GraalEra/QPlayActivity$18;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->setWebViewSize(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$fh:I

.field final synthetic val$fviewid:I

.field final synthetic val$fw:I

.field final synthetic val$fx:I

.field final synthetic val$fy:I


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;IIIII)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fviewid:I

    iput p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fw:I

    iput p4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fh:I

    iput p5, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fx:I

    iput p6, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1131
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$800(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fviewid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 1132
    .local v1, "view":Landroid/webkit/WebView;
    if-nez v1, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1135
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fw:I

    iget v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fh:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1136
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fx:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1137
    iget v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$18;->val$fy:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1138
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
