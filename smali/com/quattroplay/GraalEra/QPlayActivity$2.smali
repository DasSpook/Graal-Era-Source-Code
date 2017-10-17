.class Lcom/quattroplay/GraalEra/QPlayActivity$2;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->createInputControls()V
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
    .line 426
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$2;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    and-int/lit16 v3, p2, 0xff

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    and-int/lit16 v3, p2, 0xff

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_2

    .line 432
    :cond_0
    sget-boolean v3, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$2;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quattroplay/GraalEra/Natives;->onTextEntered(ZLjava/lang/String;)V

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$2;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/quattroplay/GraalEra/QPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 437
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$2;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 438
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$2;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    move v1, v2

    .line 442
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    return v1
.end method
