.class public Lcom/facebook/widget/FriendPickerFragment;
.super Lcom/facebook/widget/PickerFragment;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field public static final MULTI_SELECT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.MultiSelect"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final USER_ID_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.UserId"


# instance fields
.field private multiSelect:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;-><init>(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Lcom/facebook/model/GraphUser;

    sget v1, Lcom/facebook/android/R$layout;->com_facebook_friendpickerfragment:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/PickerFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method private createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 7
    .param p1, "userID"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 192
    .local p2, "extraFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/friends"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p3, v5, v6}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    .line 194
    .local v3, "request":Lcom/facebook/Request;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v4, v5

    .line 199
    .local v4, "requiredFields":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v5, p0, Lcom/facebook/widget/FriendPickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v5}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "pictureField":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 203
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 207
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v5, "fields"

    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3, v1}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 210
    return-object v3
.end method

.method private setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    if-eqz p1, :cond_1

    .line 216
    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setUserId(Ljava/lang/String;)V

    .line 219
    :cond_0
    const-string v0, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    iget-boolean v1, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setMultiSelect(Z)V

    .line 221
    :cond_1
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">.PickerFragmentAdapter<",
            "Lcom/facebook/model/GraphUser;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 144
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$1;

    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/FriendPickerFragment$1;-><init>(Lcom/facebook/widget/FriendPickerFragment;Landroid/content/Context;)V

    .line 158
    .local v0, "adapter":Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;, "Lcom/facebook/widget/PickerFragment<Lcom/facebook/model/GraphUser;>.PickerFragmentAdapter<Lcom/facebook/model/GraphUser;>;"
    invoke-virtual {v0, v2}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowCheckbox(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowPicture(Z)V

    .line 160
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setSortFields(Ljava/util/List;)V

    .line 161
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setGroupByField(Ljava/lang/String;)V

    .line 163
    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/widget/FriendPickerFragment;Lcom/facebook/widget/FriendPickerFragment$1;)V

    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">.SelectionStrategy;"
        }
    .end annotation

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    goto :goto_0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget v0, Lcom/facebook/android/R$string;->com_facebook_choose_friends:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSelect()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    return v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 3
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/facebook/widget/FriendPickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t issue requests until Fragment has been created."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    .line 183
    .local v0, "userToFetch":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/FriendPickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/FriendPickerFragment;->createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v1

    return-object v1

    .line 182
    .end local v0    # "userToFetch":Ljava/lang/String;
    :cond_1
    const-string v0, "me"

    goto :goto_0
.end method

.method public getSelection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 123
    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/FriendPickerFragment;->setMultiSelect(Z)V

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    iget-object v1, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    iget-boolean v1, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public setMultiSelect(Z)V
    .locals 1
    .param p1, "multiSelect"    # Z

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    if-eq v0, p1, :cond_0

    .line 107
    iput-boolean p1, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    .line 108
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setSelectionStrategy(Lcom/facebook/widget/PickerFragment$SelectionStrategy;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    .line 91
    return-void
.end method
