.class Lcom/facebook/widget/PickerFragment$5;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .prologue
    .line 617
    .local p0, "this":Lcom/facebook/widget/PickerFragment$5;, "Lcom/facebook/widget/PickerFragment.5;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$5;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 620
    .local p0, "this":Lcom/facebook/widget/PickerFragment$5;, "Lcom/facebook/widget/PickerFragment.5;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$5;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$200(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$5;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$200(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment$5;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-interface {v0, v1}, Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;->onDoneButtonClicked(Lcom/facebook/widget/PickerFragment;)V

    .line 623
    :cond_0
    return-void
.end method
