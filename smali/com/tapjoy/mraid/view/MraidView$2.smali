.class Lcom/tapjoy/mraid/view/MraidView$2;
.super Landroid/os/Handler;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 656
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 657
    .local v1, "data":Landroid/os/Bundle;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 807
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 808
    return-void

    .line 660
    :pswitch_0
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 661
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onExpandClose()Z

    goto :goto_0

    .line 666
    :pswitch_1
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 669
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v3, :cond_1

    .line 671
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 672
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    sget-object v6, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-static {v5, v6}, Lcom/tapjoy/mraid/view/MraidView;->access$302(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 674
    const-string v5, "resize_height"

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 675
    const-string v5, "resize_width"

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 676
    const-string v5, "resize_x"

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 677
    const-string v5, "resize_y"

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "window.mraidview.fireChangeEvent({ state: \'resized\', size: { width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}});"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "injection":Ljava/lang/String;
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5, v2}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 691
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    .line 692
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const-string v6, "resize_customClosePostition"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/mraid/view/MraidView;->access$400(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    .line 694
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    .line 697
    .end local v2    # "injection":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 698
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onResize()Z

    goto/16 :goto_0

    .line 705
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :pswitch_2
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 708
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v3, :cond_2

    .line 710
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 711
    const-string v5, "resize_height"

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 712
    const-string v5, "resize_width"

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "window.mraidview.fireChangeEvent({ state: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v6}, Lcom/tapjoy/mraid/view/MraidView;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size: { width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v7}, Lcom/tapjoy/mraid/view/MraidView;->access$500(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v7}, Lcom/tapjoy/mraid/view/MraidView;->access$500(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "});"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 723
    .restart local v2    # "injection":Ljava/lang/String;
    const-string v5, "MRAIDView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resize: injection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5, v2}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 726
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    .line 727
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const-string v6, "resize_customClosePostition"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/mraid/view/MraidView;->access$400(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    .line 729
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$600(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$700(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    if-ne v5, v6, :cond_2

    .line 730
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    .line 734
    .end local v2    # "injection":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 735
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onResize()Z

    goto/16 :goto_0

    .line 741
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :pswitch_3
    sget-object v5, Lcom/tapjoy/mraid/view/MraidView$7;->$SwitchMap$com$tapjoy$mraid$view$MraidView$VIEW_STATE:[I

    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v6}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 744
    :pswitch_4
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$800(Lcom/tapjoy/mraid/view/MraidView;)V

    goto/16 :goto_0

    .line 747
    :pswitch_5
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->closeExpanded()V

    goto/16 :goto_0

    .line 750
    :pswitch_6
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$600(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-eq v5, v6, :cond_0

    .line 751
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$900(Lcom/tapjoy/mraid/view/MraidView;)V

    goto/16 :goto_0

    .line 758
    :pswitch_7
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 759
    const-string v2, "window.mraidview.fireChangeEvent({ state: \'hidden\' });"

    .line 760
    .restart local v2    # "injection":Ljava/lang/String;
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5, v2}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 766
    .end local v2    # "injection":Ljava/lang/String;
    :pswitch_8
    const-string v2, "window.mraidview.fireChangeEvent({ state: \'default\' });"

    .line 767
    .restart local v2    # "injection":Ljava/lang/String;
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5, v2}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 768
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    goto/16 :goto_0

    .line 774
    .end local v2    # "injection":Ljava/lang/String;
    :pswitch_9
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5, v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1000(Lcom/tapjoy/mraid/view/MraidView;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 780
    :pswitch_a
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    sget-object v6, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->LEFT_BEHIND:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-static {v5, v6}, Lcom/tapjoy/mraid/view/MraidView;->access$302(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    goto/16 :goto_0

    .line 786
    :pswitch_b
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5, v1}, Lcom/tapjoy/mraid/view/MraidView;->playAudioImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 792
    :pswitch_c
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5, v1}, Lcom/tapjoy/mraid/view/MraidView;->playVideoImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 798
    :pswitch_d
    const-string v5, "message"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, "strMsg":Ljava/lang/String;
    const-string v5, "action"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "window.mraidview.fireErrorEvent(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    .restart local v2    # "injection":Ljava/lang/String;
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$2;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5, v2}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_2
    .end packed-switch

    .line 741
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
