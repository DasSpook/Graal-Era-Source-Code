.class Lcom/quattroplay/GraalEra/QPlayActivity$3;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->openVirtualKeyboard(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$finputtype:Ljava/lang/String;

.field final synthetic val$ftext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$finputtype:Ljava/lang/String;

    iput-object p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$ftext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$finputtype:Ljava/lang/String;

    const-string v3, "numbers"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2002

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 460
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 461
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$ftext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$ftext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 463
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 465
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 466
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 467
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->bringToFront()V

    .line 468
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 469
    return-void

    .line 453
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$finputtype:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x21

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$finputtype:Ljava/lang/String;

    const-string v3, "password"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x81

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$3;->val$finputtype:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x11

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x91

    goto/16 :goto_0
.end method
