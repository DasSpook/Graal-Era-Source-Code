.class Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PlacePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PlacePickerFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/PlacePickerFragment;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/widget/PlacePickerFragment;
    .param p2, "x1"    # Lcom/facebook/widget/PlacePickerFragment$1;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 528
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 519
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/PlacePickerFragment;->onSearchBoxTextChanged(Ljava/lang/String;Z)V

    .line 524
    return-void
.end method
