.class public Lcom/facebook/widget/PlacePickerFragment;
.super Lcom/facebook/widget/PickerFragment;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;,
        Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DEFAULT_RADIUS_IN_METERS:I = 0x3e8

.field public static final DEFAULT_RESULTS_LIMIT:I = 0x64

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOCATION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.Location"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final RADIUS_IN_METERS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

.field public static final RESULTS_LIMIT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ResultsLimit"

.field public static final SEARCH_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.SearchText"

.field public static final SHOW_SEARCH_BOX_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

.field private static final TAG:Ljava/lang/String; = "PlacePickerFragment"

.field private static final WERE_HERE_COUNT:Ljava/lang/String; = "were_here_count"

.field private static final searchTextTimerDelayInMilliseconds:I = 0x7d0


# instance fields
.field private hasSearchTextChangedSinceLastQuery:Z

.field private location:Landroid/location/Location;

.field private radiusInMeters:I

.field private resultsLimit:I

.field private searchBox:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private searchTextTimer:Ljava/util/Timer;

.field private showSearchBox:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;-><init>(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 112
    const-class v0, Lcom/facebook/model/GraphPlace;

    sget v1, Lcom/facebook/android/R$layout;->com_facebook_placepickerfragment:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/PickerFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 90
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    .line 91
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/PlacePickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/PlacePickerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V

    return-void
.end method

.method private createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 12
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p6, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .prologue
    .line 390
    .local p5, "extraFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object/from16 v1, p6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object v10

    .line 393
    .local v10, "request":Lcom/facebook/Request;
    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 394
    .local v7, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x5

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v11, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v11, v1

    const/4 v1, 0x2

    const-string v2, "location"

    aput-object v2, v11, v1

    const/4 v1, 0x3

    const-string v2, "category"

    aput-object v2, v11, v1

    const/4 v1, 0x4

    const-string v2, "were_here_count"

    aput-object v2, v11, v1

    .line 401
    .local v11, "requiredFields":[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, "pictureField":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 405
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    invoke-virtual {v10}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v8

    .line 409
    .local v8, "parameters":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, ","

    invoke-static {v2, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v10, v8}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 412
    return-object v10
.end method

.method private createSearchTextTimer()Ljava/util/Timer;
    .locals 6

    .prologue
    .line 432
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 433
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$2;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 440
    return-object v0
.end method

.method private onSearchTextTimerTriggered()V
    .locals 2

    .prologue
    .line 444
    iget-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    if-eqz v1, :cond_0

    .line 445
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 446
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$3;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 417
    if-eqz p1, :cond_2

    .line 418
    const-string v1, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 419
    const-string v1, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    .line 420
    const-string v1, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const-string v1, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 423
    :cond_0
    const-string v1, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    const-string v1, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 425
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    .line 427
    .end local v0    # "location":Landroid/location/Location;
    :cond_1
    const-string v1, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    iget-boolean v2, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 429
    :cond_2
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.PickerFragmentAdapter<",
            "Lcom/facebook/model/GraphPlace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$1;

    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$1;-><init>(Lcom/facebook/widget/PlacePickerFragment;Landroid/content/Context;)V

    .line 372
    .local v0, "adapter":Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;, "Lcom/facebook/widget/PickerFragment<Lcom/facebook/model/GraphPlace;>.PickerFragmentAdapter<Lcom/facebook/model/GraphPlace;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowCheckbox(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowPicture(Z)V

    .line 374
    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$1;)V

    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.SelectionStrategy;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    sget v0, Lcom/facebook/android/R$string;->com_facebook_nearby:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getRadiusInMeters()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    return v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 7
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    iget v3, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment;->extraFields:Ljava/util/HashSet;

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/widget/PlacePickerFragment;->createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public getResultsLimit()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Lcom/facebook/model/GraphPlace;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "selection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/model/GraphPlace;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/model/GraphPlace;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 261
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 264
    .local v3, "view":Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    if-eqz v4, :cond_1

    .line 265
    sget v4, Lcom/facebook/android/R$id;->com_facebook_placepickerfragment_search_box_stub:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 266
    .local v2, "stub":Landroid/view/ViewStub;
    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    .line 270
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/facebook/android/R$id;->search_box:I

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 275
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 276
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 280
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x2

    invoke-direct {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 283
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 285
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    :cond_0
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    new-instance v5, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "stub":Landroid/view/ViewStub;
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 300
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 302
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 304
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Lcom/facebook/widget/PickerFragment;->onDetach()V

    .line 310
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 312
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 314
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 247
    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 250
    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    .line 251
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 254
    :cond_0
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 256
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    return-void
.end method

.method onLoadingData()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 329
    return-void
.end method

.method public onSearchBoxTextChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "forceReloadEventIfSameText"    # Z

    .prologue
    .line 210
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    const/4 p1, 0x0

    .line 217
    :cond_2
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 224
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 319
    const-string v0, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v0, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 323
    const-string v0, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    iget-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    .line 132
    return-void
.end method

.method public setRadiusInMeters(I)V
    .locals 0
    .param p1, "radiusInMeters"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    .line 150
    return-void
.end method

.method public setResultsLimit(I)V
    .locals 0
    .param p1, "resultsLimit"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    .line 168
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 p1, 0x0

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method
