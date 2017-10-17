.class Lcom/facebook/widget/PickerFragment$6;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
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
    .line 733
    .local p0, "this":Lcom/facebook/widget/PickerFragment$6;, "Lcom/facebook/widget/PickerFragment.6;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$6;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 740
    .local p0, "this":Lcom/facebook/widget/PickerFragment$6;, "Lcom/facebook/widget/PickerFragment.6;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$6;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$300(Lcom/facebook/widget/PickerFragment;)V

    .line 741
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 736
    .local p0, "this":Lcom/facebook/widget/PickerFragment$6;, "Lcom/facebook/widget/PickerFragment.6;"
    return-void
.end method
