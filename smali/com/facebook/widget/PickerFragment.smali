.class public abstract Lcom/facebook/widget/PickerFragment;
.super Landroid/support/v4/app/Fragment;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;,
        Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$SelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$LoadingStrategy;,
        Lcom/facebook/widget/PickerFragment$GraphObjectFilter;,
        Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;,
        Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;,
        Lcom/facebook/widget/PickerFragment$OnDataChangedListener;,
        Lcom/facebook/widget/PickerFragment$OnErrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_CIRCLE_SHOW_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.ActivityCircleShown"

.field public static final DONE_BUTTON_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.DoneButtonText"

.field public static final EXTRA_FIELDS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ExtraFields"

.field private static final PROFILE_PICTURE_PREFETCH_BUFFER:I = 0x5

.field private static final SELECTION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.Selection"

.field public static final SHOW_PICTURES_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowPictures"

.field public static final SHOW_TITLE_BAR_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowTitleBar"

.field public static final TITLE_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.TitleText"


# instance fields
.field private activityCircle:Landroid/widget/ProgressBar;

.field adapter:Lcom/facebook/widget/GraphObjectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private doneButton:Landroid/widget/Button;

.field private doneButtonBackground:Landroid/graphics/drawable/Drawable;

.field private doneButtonText:Ljava/lang/String;

.field extraFields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment$GraphObjectFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final layout:I

.field private listView:Landroid/widget/ListView;

.field private loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end field

.field private onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

.field private onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

.field private onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

.field private selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.SelectionStrategy;"
        }
    .end annotation
.end field

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private showPictures:Z

.field private showTitleBar:Z

.field private titleBarBackground:Landroid/graphics/drawable/Drawable;

.field private titleText:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 1
    .param p2, "layout"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    .line 106
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    .line 90
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    .line 733
    new-instance v0, Lcom/facebook/widget/PickerFragment$6;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$6;-><init>(Lcom/facebook/widget/PickerFragment;)V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 107
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->graphObjectClass:Ljava/lang/Class;

    .line 108
    iput p2, p0, Lcom/facebook/widget/PickerFragment;->layout:I

    .line 110
    invoke-direct {p0, p3}, Lcom/facebook/widget/PickerFragment;->setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/PickerFragment;Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/PickerFragment;
    .param p1, "x1"    # Landroid/widget/ListView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/PickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/PickerFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->clearResults()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/PickerFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/widget/PickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/PickerFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->reprioritizeDownloads()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/PickerFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/widget/PickerFragment;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/PickerFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->graphObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/PickerFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    return-object v0
.end method

.method private clearResults()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 667
    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-eqz v4, :cond_1

    .line 668
    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v4}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 669
    .local v1, "wasSelection":Z
    :goto_0
    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v4}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 671
    .local v0, "wasData":Z
    :goto_1
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->clearResults()V

    .line 672
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v2}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->clear()V

    .line 673
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 676
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    if-eqz v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    invoke-interface {v2, p0}, Lcom/facebook/widget/PickerFragment$OnDataChangedListener;->onDataChanged(Lcom/facebook/widget/PickerFragment;)V

    .line 679
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    if-eqz v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    invoke-interface {v2, p0}, Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lcom/facebook/widget/PickerFragment;)V

    .line 683
    .end local v0    # "wasData":Z
    .end local v1    # "wasSelection":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 668
    goto :goto_0

    .restart local v1    # "wasSelection":Z
    :cond_3
    move v0, v3

    .line 669
    goto :goto_1
.end method

.method private inflateTitleBar(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    const/4 v4, -0x1

    .line 601
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar_stub:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 602
    .local v1, "stub":Landroid/view/ViewStub;
    if-eqz v1, :cond_3

    .line 603
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 605
    .local v2, "titleBar":Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 608
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 609
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :cond_0
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_done_button:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    .line 616
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 617
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    new-instance v4, Lcom/facebook/widget/PickerFragment$5;

    invoke-direct {v4, p0}, Lcom/facebook/widget/PickerFragment$5;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 627
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :cond_1
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 631
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    :cond_2
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    .line 636
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 637
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getTitleText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 638
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getTitleText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "titleBar":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private loadDataSkippingRoundTripIfCached()V
    .locals 2

    .prologue
    .line 657
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->clearResults()V

    .line 659
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PickerFragment;->getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v0

    .line 660
    .local v0, "request":Lcom/facebook/Request;
    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->onLoadingData()V

    .line 662
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->startLoading(Lcom/facebook/Request;)V

    .line 664
    :cond_0
    return-void
.end method

.method private onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 646
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 647
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v2, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v2, v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 651
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    invoke-interface {v2, p0}, Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lcom/facebook/widget/PickerFragment;)V

    .line 654
    :cond_0
    return-void
.end method

.method private reprioritizeDownloads()V
    .locals 4

    .prologue
    .line 726
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 727
    .local v1, "lastVisibleItem":I
    if-ltz v1, :cond_0

    .line 728
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 729
    .local v0, "firstVisibleItem":I
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v1, v3}, Lcom/facebook/widget/GraphObjectAdapter;->prioritizeViewRange(III)V

    .line 731
    .end local v0    # "firstVisibleItem":I
    :cond_0
    return-void
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 566
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 567
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 569
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 570
    return-void
.end method

.method private setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 575
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    if-eqz p1, :cond_2

    .line 576
    const-string v4, "com.facebook.widget.PickerFragment.ShowPictures"

    iget-boolean v5, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    .line 577
    const-string v4, "com.facebook.widget.PickerFragment.ExtraFields"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "extraFieldsString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 579
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/widget/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 582
    .end local v2    # "strings":[Ljava/lang/String;
    :cond_0
    const-string v4, "com.facebook.widget.PickerFragment.ShowTitleBar"

    iget-boolean v5, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    .line 583
    const-string v4, "com.facebook.widget.PickerFragment.TitleText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "titleTextString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 585
    iput-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    .line 586
    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 587
    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_1
    const-string v4, "com.facebook.widget.PickerFragment.DoneButtonText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "doneButtonTextString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 592
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 593
    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 594
    iget-object v4, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .end local v0    # "doneButtonTextString":Ljava/lang/String;
    .end local v1    # "extraFieldsString":Ljava/lang/String;
    .end local v3    # "titleTextString":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method abstract createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.PickerFragmentAdapter<TT;>;"
        }
    .end annotation
.end method

.method abstract createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end method

.method abstract createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.SelectionStrategy;"
        }
    .end annotation
.end method

.method displayActivityCircle()V
    .locals 2

    .prologue
    .line 533
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->layoutActivityCircle()V

    .line 535
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 537
    :cond_0
    return-void
.end method

.method filterIncludesItem(Lcom/facebook/model/GraphObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    invoke-interface {v0, p1}, Lcom/facebook/widget/PickerFragment$GraphObjectFilter;->includeItem(Ljava/lang/Object;)Z

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getDefaultDoneButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    sget v0, Lcom/facebook/android/R$string;->com_facebook_picker_done_button_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoneButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDefaultDoneButtonText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFilter()Lcom/facebook/widget/PickerFragment$GraphObjectFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment$GraphObjectFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    return-object v0
.end method

.method public getOnDataChangedListener()Lcom/facebook/widget/PickerFragment$OnDataChangedListener;
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    return-object v0
.end method

.method public getOnDoneButtonClickedListener()Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;
    .locals 1

    .prologue
    .line 289
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    return-object v0
.end method

.method public getOnSelectionChangedListener()Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    return-object v0
.end method

.method abstract getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
.end method

.method getSelectedGraphObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->getSelectedIds()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public getShowPictures()Z
    .locals 1

    .prologue
    .line 370
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    return v0
.end method

.method public getShowTitleBar()Z
    .locals 1

    .prologue
    .line 419
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    return v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDefaultTitleText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method hideActivityCircle()V
    .locals 2

    .prologue
    .line 547
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 550
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 552
    :cond_0
    return-void
.end method

.method layoutActivityCircle()V
    .locals 2

    .prologue
    .line 542
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    .line 543
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/facebook/widget/PickerFragment;->setAlpha(Landroid/view/View;F)V

    .line 544
    return-void

    .line 542
    .end local v0    # "alpha":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public loadData(Z)V
    .locals 1
    .param p1, "forceReload"    # Z

    .prologue
    .line 475
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->isDataPresentOrLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->loadDataSkippingRoundTripIfCached()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    new-instance v1, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/facebook/widget/PickerFragment$4;

    invoke-direct {v3, p0}, Lcom/facebook/widget/PickerFragment$4;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    .line 189
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    .line 192
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v1, v2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V

    .line 194
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    .line 195
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    const-string v2, "com.facebook.android.PickerFragment.Selection"

    invoke-virtual {v1, p1, v2}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 198
    iget-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/facebook/widget/PickerFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 203
    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    .local v0, "shown":Z
    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->displayActivityCircle()V

    .line 211
    .end local v0    # "shown":Z
    :cond_1
    :goto_0
    return-void

    .line 208
    .restart local v0    # "shown":Z
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->hideActivityCircle()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    .line 118
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    new-instance v1, Lcom/facebook/widget/PickerFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PickerFragment$1;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setFilter(Lcom/facebook/widget/GraphObjectAdapter$Filter;)V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget v1, p0, Lcom/facebook/widget/PickerFragment;->layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    .local v0, "view":Landroid/view/ViewGroup;
    sget v1, Lcom/facebook/android/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    .line 152
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/facebook/widget/PickerFragment$2;

    invoke-direct {v2, p0}, Lcom/facebook/widget/PickerFragment$2;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/facebook/widget/PickerFragment$3;

    invoke-direct {v2, p0}, Lcom/facebook/widget/PickerFragment$3;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 168
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    sget v1, Lcom/facebook/android/R$id;->com_facebook_picker_activity_circle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    .line 172
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    const/4 v1, 0x0

    .line 215
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 217
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 218
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->detach()V

    .line 221
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    .line 222
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 129
    sget-object v3, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment:[I

    invoke-virtual {p1, p2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/widget/PickerFragment;->setShowPictures(Z)V

    .line 132
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "extraFieldsString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 134
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/widget/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 138
    .end local v2    # "strings":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    .line 139
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    .line 140
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 141
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    .line 142
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    return-void
.end method

.method onLoadingData()V
    .locals 0

    .prologue
    .line 522
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    const-string v1, "com.facebook.android.PickerFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 231
    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    :cond_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 504
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    const-string v0, "com.facebook.widget.PickerFragment.ShowPictures"

    iget-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const-string v0, "com.facebook.widget.PickerFragment.ExtraFields"

    const-string v1, ","

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    const-string v0, "com.facebook.widget.PickerFragment.ShowTitleBar"

    iget-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    const-string v0, "com.facebook.widget.PickerFragment.TitleText"

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, "com.facebook.widget.PickerFragment.DoneButtonText"

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 237
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

.method public setDoneButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "doneButtonText"    # Ljava/lang/String;

    .prologue
    .line 453
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setExtraFields(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    .local p1, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    .line 398
    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 401
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/facebook/widget/PickerFragment$GraphObjectFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/PickerFragment$GraphObjectFilter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    .local p1, "filter":Lcom/facebook/widget/PickerFragment$GraphObjectFilter;, "Lcom/facebook/widget/PickerFragment$GraphObjectFilter<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    .line 343
    return-void
.end method

.method public setOnDataChangedListener(Lcom/facebook/widget/PickerFragment$OnDataChangedListener;)V
    .locals 0
    .param p1, "onDataChangedListener"    # Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    .prologue
    .line 258
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    .line 259
    return-void
.end method

.method public setOnDoneButtonClickedListener(Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;)V
    .locals 0
    .param p1, "onDoneButtonClickedListener"    # Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    .prologue
    .line 300
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    .line 301
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/PickerFragment$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/widget/PickerFragment$OnErrorListener;

    .prologue
    .line 320
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    .line 321
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;)V
    .locals 0
    .param p1, "onSelectionChangedListener"    # Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    .prologue
    .line 279
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    .line 280
    return-void
.end method

.method setSelectionStrategy(Lcom/facebook/widget/PickerFragment$SelectionStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.SelectionStrategy;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    .local p1, "selectionStrategy":Lcom/facebook/widget/PickerFragment$SelectionStrategy;, "Lcom/facebook/widget/PickerFragment<TT;>.SelectionStrategy;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    if-eq p1, v0, :cond_0

    .line 556
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    .line 557
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 562
    :cond_0
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 361
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 362
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 489
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment;->setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    .line 490
    return-void
.end method

.method public setShowPictures(Z)V
    .locals 0
    .param p1, "showPictures"    # Z

    .prologue
    .line 379
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    .line 380
    return-void
.end method

.method public setShowTitleBar(Z)V
    .locals 0
    .param p1, "showTitleBar"    # Z

    .prologue
    .line 410
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    .line 411
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 430
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    .line 431
    return-void
.end method

.method updateAdapter(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Lcom/facebook/widget/PickerFragment;, "Lcom/facebook/widget/PickerFragment<TT;>;"
    .local p1, "data":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-eqz v6, :cond_2

    .line 698
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 699
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 700
    .local v1, "anchorPosition":I
    if-lez v1, :cond_0

    .line 701
    add-int/lit8 v1, v1, 0x1

    .line 703
    :cond_0
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v6, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 704
    .local v0, "anchorItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v6

    sget-object v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 709
    .local v4, "top":I
    :goto_0
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v6, p1}, Lcom/facebook/widget/GraphObjectAdapter;->changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z

    move-result v2

    .line 711
    .local v2, "dataChanged":Z
    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 713
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    iget-object v7, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    iget-object v8, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/widget/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I

    move-result v3

    .line 714
    .local v3, "newPositionOfItem":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 715
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 719
    .end local v3    # "newPositionOfItem":I
    :cond_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    if-eqz v6, :cond_2

    .line 720
    iget-object v6, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    invoke-interface {v6, p0}, Lcom/facebook/widget/PickerFragment$OnDataChangedListener;->onDataChanged(Lcom/facebook/widget/PickerFragment;)V

    .line 723
    .end local v0    # "anchorItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    .end local v1    # "anchorPosition":I
    .end local v2    # "dataChanged":Z
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 704
    .restart local v0    # "anchorItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    .restart local v1    # "anchorPosition":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
