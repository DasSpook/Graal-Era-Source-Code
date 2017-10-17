.class Lcom/quattroplay/GraalEra/QPlayActivity$4;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->closeVirtualKeyboard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$fwithtext:Z


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Z)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$4;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput-boolean p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$4;->val$fwithtext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$4;->val$fwithtext:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v1, :cond_0

    .line 481
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$4;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quattroplay/GraalEra/Natives;->onTextEntered(ZLjava/lang/String;)V

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$4;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 485
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$4;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 486
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$4;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 487
    return-void
.end method
