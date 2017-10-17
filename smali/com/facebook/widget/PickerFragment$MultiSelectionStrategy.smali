.class Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;
.super Lcom/facebook/widget/PickerFragment$SelectionStrategy;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiSelectionStrategy"
.end annotation


# instance fields
.field private selectedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 1

    .prologue
    .line 972
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    .line 973
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1017
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1018
    return-void
.end method

.method public getSelectedIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 976
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 1022
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 981
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "inBundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1005
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    if-eqz p1, :cond_0

    .line 1006
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "ids":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1008
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "splitIds":[Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1010
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1013
    .end local v0    # "ids":Ljava/lang/String;
    .end local v1    # "splitIds":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "outBundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 997
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 998
    const-string v1, ","

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "ids":Ljava/lang/String;
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .end local v0    # "ids":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method shouldShowCheckBoxIfUnselected()Z
    .locals 1

    .prologue
    .line 1027
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    const/4 v0, 0x1

    return v0
.end method

.method toggleSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 986
    .local p0, "this":Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.MultiSelectionStrategy;"
    if-eqz p1, :cond_0

    .line 987
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
