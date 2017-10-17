.class Lcom/facebook/widget/GraphObjectAdapter;
.super Landroid/widget/BaseAdapter;
.source "GraphObjectAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/GraphObjectAdapter$3;,
        Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;,
        Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;,
        Lcom/facebook/widget/GraphObjectAdapter$Filter;,
        Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,
        Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;,
        Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACTIVITY_CIRCLE_VIEW_TYPE:I = 0x2

.field private static final DISPLAY_SECTIONS_THRESHOLD:I = 0x1

.field private static final GRAPH_OBJECT_VIEW_TYPE:I = 0x1

.field private static final HEADER_VIEW_TYPE:I = 0x0

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MAX_PREFETCHED_PICTURES:I = 0x14

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PICTURE:Ljava/lang/String; = "picture"


# instance fields
.field private context:Landroid/content/Context;

.field private cursor:Lcom/facebook/widget/GraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

.field private displaySections:Z

.field private filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsBySection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private groupByField:Ljava/lang/String;

.field private final inflater:Landroid/view/LayoutInflater;

.field private onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

.field private final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/widget/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedPictureCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/widget/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedProfilePictureIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showCheckbox:Z

.field private showPicture:Z

.field private sortFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    .line 104
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->context:Landroid/content/Context;

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/GraphObjectAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/GraphObjectAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/model/GraphObject;
    .param p1, "x1"    # Lcom/facebook/model/GraphObject;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/text/Collator;

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->compareGraphObjects(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/widget/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/GraphObjectAdapter;
    .param p1, "x1"    # Lcom/facebook/widget/ImageResponse;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/widget/ImageView;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->processImageResponse(Lcom/facebook/widget/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private callOnErrorListener(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 761
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    if-eqz v1, :cond_1

    .line 762
    instance-of v1, p1, Lcom/facebook/FacebookException;

    if-nez v1, :cond_0

    .line 763
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "exception":Ljava/lang/Exception;
    .local v0, "exception":Ljava/lang/Exception;
    move-object p1, v0

    .line 765
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local p1    # "exception":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    move-object v1, p1

    check-cast v1, Lcom/facebook/FacebookException;

    invoke-interface {v2, p0, v1}, Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;->onError(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/FacebookException;)V

    .line 767
    :cond_1
    return-void
.end method

.method private static compareGraphObjects(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .locals 6
    .param p0, "a"    # Lcom/facebook/model/GraphObject;
    .param p1, "b"    # Lcom/facebook/model/GraphObject;
    .param p3, "collator"    # Ljava/text/Collator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/model/GraphObject;",
            "Lcom/facebook/model/GraphObject;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/text/Collator;",
            ")I"
        }
    .end annotation

    .prologue
    .line 798
    .local p2, "sortFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 799
    .local v4, "sortField":Ljava/lang/String;
    invoke-interface {p0, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 800
    .local v2, "sa":Ljava/lang/String;
    invoke-interface {p1, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 802
    .local v3, "sb":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 803
    invoke-virtual {p3, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 804
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 811
    .end local v1    # "result":I
    .end local v2    # "sa":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/String;
    .end local v4    # "sortField":Ljava/lang/String;
    :goto_0
    return v1

    .line 807
    .restart local v2    # "sa":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/String;
    .restart local v4    # "sortField":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    .line 808
    :cond_2
    if-nez v2, :cond_3

    const/4 v5, -0x1

    :goto_1
    move v1, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 811
    .end local v2    # "sa":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/String;
    .end local v4    # "sortField":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private downloadProfilePicture(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "pictureURL"    # Ljava/net/URL;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 726
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    if-nez p2, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    if-nez p3, :cond_4

    const/4 v2, 0x1

    .line 735
    .local v2, "prefetching":Z
    :goto_1
    if-nez v2, :cond_2

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    :cond_2
    if-nez v2, :cond_3

    .line 739
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 740
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getDefaultPicture()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    :cond_3
    new-instance v3, Lcom/facebook/widget/ImageRequest$Builder;

    iget-object v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/facebook/widget/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    invoke-virtual {v3, p0}, Lcom/facebook/widget/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/widget/ImageRequest$Builder;

    move-result-object v3

    new-instance v4, Lcom/facebook/widget/GraphObjectAdapter$2;

    invoke-direct {v4, p0, p1, p3}, Lcom/facebook/widget/GraphObjectAdapter$2;-><init>(Lcom/facebook/widget/GraphObjectAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Lcom/facebook/widget/ImageRequest$Builder;->setCallback(Lcom/facebook/widget/ImageRequest$Callback;)Lcom/facebook/widget/ImageRequest$Builder;

    move-result-object v0

    .line 753
    .local v0, "builder":Lcom/facebook/widget/ImageRequest$Builder;
    invoke-virtual {v0}, Lcom/facebook/widget/ImageRequest$Builder;->build()Lcom/facebook/widget/ImageRequest;

    move-result-object v1

    .line 754
    .local v1, "newRequest":Lcom/facebook/widget/ImageRequest;
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-static {v1}, Lcom/facebook/widget/ImageDownloader;->downloadAsync(Lcom/facebook/widget/ImageRequest;)V

    goto :goto_0

    .line 734
    .end local v0    # "builder":Lcom/facebook/widget/ImageRequest$Builder;
    .end local v1    # "newRequest":Lcom/facebook/widget/ImageRequest;
    .end local v2    # "prefetching":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 305
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    move-object v1, p1

    .line 307
    .local v1, "result":Landroid/view/View;
    if-nez v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/facebook/android/R$layout;->com_facebook_picker_activity_circle_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 310
    :cond_0
    sget v2, Lcom/facebook/android/R$id;->com_facebook_picker_row_activity_circle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 311
    .local v0, "activityCircle":Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 313
    return-object v1
.end method

.method private processImageResponse(Lcom/facebook/widget/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "response"    # Lcom/facebook/widget/ImageResponse;
    .param p2, "graphObjectId"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 770
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 772
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/widget/GraphObjectAdapter;->callOnErrorListener(Ljava/lang/Exception;)V

    .line 775
    :cond_0
    if-nez p3, :cond_3

    .line 777
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 779
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 781
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 782
    .local v2, "oldestId":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .end local v2    # "oldestId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_2
    :goto_0
    return-void

    .line 786
    :cond_3
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 787
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 788
    .local v1, "error":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 790
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 791
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getRequest()Lcom/facebook/widget/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private rebuildSections()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 447
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 448
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    .line 449
    iput-boolean v7, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    .line 451
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v8}, Lcom/facebook/widget/GraphObjectCursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    const/4 v3, 0x0

    .line 456
    .local v3, "objectsAdded":I
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v8}, Lcom/facebook/widget/GraphObjectCursor;->moveToFirst()Z

    .line 458
    :cond_2
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v8}, Lcom/facebook/widget/GraphObjectCursor;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 460
    .local v1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->filterIncludesItem(Lcom/facebook/model/GraphObject;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 475
    :goto_1
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v8}, Lcom/facebook/widget/GraphObjectCursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 477
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 478
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 479
    .local v0, "collator":Ljava/text/Collator;
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 480
    .local v4, "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v8, Lcom/facebook/widget/GraphObjectAdapter$1;

    invoke-direct {v8, p0, v0}, Lcom/facebook/widget/GraphObjectAdapter$1;-><init>(Lcom/facebook/widget/GraphObjectAdapter;Ljava/text/Collator;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 464
    .end local v0    # "collator":Ljava/text/Collator;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 466
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionKeyOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "sectionKeyOfItem":Ljava/lang/String;
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 468
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_4
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 472
    .restart local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 489
    .end local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "sectionKeyOfItem":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    iget-object v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_6

    if-le v3, v6, :cond_6

    :goto_3
    iput-boolean v6, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto :goto_3
.end method

.method private shouldShowActivityCircleCell()Z
    .locals 1

    .prologue
    .line 442
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 606
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    return v0
.end method

.method public changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "cursor":Lcom/facebook/widget/GraphObjectCursor;, "Lcom/facebook/widget/GraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-ne v0, p1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->close()V

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    .line 169
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->rebuildAndNotify()V

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;)Landroid/view/View;
    .locals 10
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 325
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 327
    .local v4, "result":Landroid/view/View;
    sget v5, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox_stub:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 328
    .local v1, "checkboxStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v5

    if-nez v5, :cond_1

    .line 330
    invoke-virtual {v1, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 337
    :cond_0
    :goto_0
    sget v5, Lcom/facebook/android/R$id;->com_facebook_picker_profile_pic_stub:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 338
    .local v3, "profilePicStub":Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowPicture()Z

    move-result v5

    if-nez v5, :cond_2

    .line 339
    invoke-virtual {v3, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 345
    :goto_1
    return-object v4

    .line 332
    .end local v3    # "profilePicStub":Landroid/view/ViewStub;
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 333
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0, v0, v8}, Lcom/facebook/widget/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    goto :goto_0

    .line 341
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v3    # "profilePicStub":Landroid/view/ViewStub;
    :cond_2
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 342
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method filterIncludesItem(Lcom/facebook/model/GraphObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    invoke-interface {v0, p1}, Lcom/facebook/widget/GraphObjectAdapter$Filter;->includeItem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x0

    .line 585
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 592
    .local v0, "count":I
    :cond_2
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 593
    .local v2, "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 597
    .end local v2    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    invoke-direct {p0}, Lcom/facebook/widget/GraphObjectAdapter;->shouldShowActivityCircleCell()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCursor()Lcom/facebook/widget/GraphObjectCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    return-object v0
.end method

.method public getDataNeededListener()Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    return-object v0
.end method

.method protected getDefaultPicture()I
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_default_icon:I

    return v0
.end method

.method getFilter()Lcom/facebook/widget/GraphObjectAdapter$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    return-object v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    sget v0, Lcom/facebook/android/R$layout;->com_facebook_picker_list_row:I

    return v0
.end method

.method protected getGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    move-object v0, p2

    .line 296
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 300
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->populateGraphObjectView(Landroid/view/View;Lcom/facebook/model/GraphObject;)V

    .line 301
    return-object v0
.end method

.method public getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 712
    .local v3, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 714
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 716
    .local v2, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 717
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 722
    .end local v0    # "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getGroupByField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    return-object v0
.end method

.method getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const-string v1, "id"

    invoke-interface {p1, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 398
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 399
    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    .line 402
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Received an object without an ID."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 622
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 623
    .local v0, "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 631
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v1

    .line 632
    .local v1, "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 635
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 638
    .end local v0    # "id":Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 648
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 649
    .local v0, "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 657
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected type of section and item."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :pswitch_0
    const/4 v1, 0x0

    .line 655
    :goto_0
    return v1

    .line 653
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 655
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOnErrorListener()Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    return-object v0
.end method

.method getPictureFieldSpecifier()Ljava/lang/String;
    .locals 7

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v3, 0x0

    .line 427
    invoke-virtual {p0, v3, v3}, Lcom/facebook/widget/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 428
    .local v2, "view":Landroid/view/View;
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 429
    .local v1, "picture":Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 435
    :goto_0
    return-object v3

    .line 434
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 435
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const-string v3, "picture.height(%d).width(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected getPictureUrlOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    const/4 v3, 0x0

    .line 261
    .local v3, "url":Ljava/lang/String;
    const-string v4, "picture"

    invoke-interface {p1, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 262
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 263
    check-cast v3, Ljava/lang/String;

    .line 272
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 274
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_1
    return-object v4

    .line 264
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 265
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v4

    const-class v5, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;

    invoke-interface {v4, v5}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;

    .line 266
    .local v1, "itemPicture":Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;
    invoke-interface {v1}, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;->getData()Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;

    move-result-object v0

    .line 267
    .local v0, "data":Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 275
    .end local v0    # "data":Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;
    .end local v1    # "itemPicture":Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;
    :catch_0
    move-exception v4

    .line 278
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I
    .locals 7
    .param p1, "sectionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p2, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    const/4 v6, -0x1

    .line 542
    const/4 v3, 0x0

    .line 543
    .local v3, "position":I
    const/4 v0, 0x0

    .line 547
    .local v0, "found":Z
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 548
    .local v2, "key":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v5, :cond_0

    .line 549
    add-int/lit8 v3, v3, 0x1

    .line 551
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 552
    const/4 v0, 0x1

    .line 559
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_3

    move v5, v6

    .line 574
    :goto_1
    return v5

    .line 555
    .restart local v2    # "key":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 561
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_5

    .line 564
    iget-boolean v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    sub-int v5, v3, v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 568
    :cond_5
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/model/GraphObject;

    .line 569
    .local v4, "t":Lcom/facebook/model/GraphObject;, "TT;"
    invoke-static {v4, p2}, Lcom/facebook/model/GraphObject$Factory;->hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    .line 570
    goto :goto_1

    .line 572
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4    # "t":Lcom/facebook/model/GraphObject;, "TT;"
    :cond_7
    move v5, v6

    .line 574
    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x0

    .line 691
    iget-boolean v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 693
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 694
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I

    move-result v0

    .line 697
    :cond_0
    return v0
.end method

.method getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;
    .locals 9
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v6, 0x0

    .line 495
    iget-object v7, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 535
    :goto_0
    return-object v6

    .line 498
    :cond_0
    const/4 v5, 0x0

    .line 499
    .local v5, "sectionKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 501
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    iget-boolean v7, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-nez v7, :cond_5

    .line 502
    iget-object v7, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sectionKey":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 503
    .restart local v5    # "sectionKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 504
    .local v4, "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ltz p1, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_2

    .line 505
    iget-object v6, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 533
    .end local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v0    # "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    :cond_1
    :goto_1
    if-eqz v5, :cond_8

    .line 535
    new-instance v6, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    invoke-direct {v6, v5, v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/model/GraphObject;)V

    goto :goto_0

    .line 508
    .restart local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    sget-boolean v7, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v7}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 510
    :cond_4
    new-instance v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    invoke-direct {v7, v6, v6}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/model/GraphObject;)V

    move-object v6, v7

    goto :goto_0

    .line 515
    .end local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_5
    iget-object v6, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 517
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v3, p1, -0x1

    .end local p1    # "position":I
    .local v3, "position":I
    if-nez p1, :cond_6

    .line 518
    move-object v5, v2

    move p1, v3

    .line 519
    .end local v3    # "position":I
    .restart local p1    # "position":I
    goto :goto_1

    .line 522
    .end local p1    # "position":I
    .restart local v3    # "position":I
    :cond_6
    iget-object v6, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 523
    .restart local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 525
    move-object v5, v2

    .line 526
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    check-cast v0, Lcom/facebook/model/GraphObject;

    .restart local v0    # "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    move p1, v3

    .line 527
    .end local v3    # "position":I
    .restart local p1    # "position":I
    goto :goto_1

    .line 530
    .end local p1    # "position":I
    .restart local v3    # "position":I
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int p1, v3, v6

    .line 531
    .end local v3    # "position":I
    .restart local p1    # "position":I
    goto :goto_2

    .line 537
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_8
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    const-string v7, "position"

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getSectionForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v1, 0x0

    .line 702
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 703
    .local v0, "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v2, v3, :cond_0

    .line 705
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    iget-object v3, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 707
    :cond_0
    return v1
.end method

.method protected getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "sectionHeader"    # Ljava/lang/String;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 282
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 284
    .local v0, "result":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/android/R$layout;->com_facebook_picker_list_section_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "result":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 288
    .restart local v0    # "result":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-object v0
.end method

.method protected getSectionKeyOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    const/4 v0, 0x0

    .line 241
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 243
    .restart local v0    # "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getShowCheckbox()Z
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->showCheckbox:Z

    return v0
.end method

.method public getShowPicture()Z
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->showPicture:Z

    return v0
.end method

.method public getSortFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    const-string v0, "name"

    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 663
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 665
    .local v0, "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 676
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected type of section and item."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :pswitch_0
    iget-object v1, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 674
    :goto_0
    return-object v1

    .line 669
    :pswitch_1
    iget-object v1, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p0, v1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 672
    :pswitch_2
    sget-boolean v1, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v1}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    invoke-interface {v1}, Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;->onDataNeeded()V

    .line 674
    invoke-direct {p0, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 643
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 611
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 580
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 616
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 617
    .local v0, "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isGraphObjectSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "graphObjectId"    # Ljava/lang/String;

    .prologue
    .line 418
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected populateGraphObjectView(Landroid/view/View;Lcom/facebook/model/GraphObject;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p2, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 353
    .local v7, "title":Ljava/lang/CharSequence;
    sget v9, Lcom/facebook/android/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 354
    .local v8, "titleView":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 355
    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 358
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 359
    .local v5, "subtitle":Ljava/lang/CharSequence;
    sget v9, Lcom/facebook/android/R$id;->picker_subtitle:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 360
    .local v6, "subtitleView":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 361
    if-eqz v5, :cond_4

    .line 362
    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 363
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 370
    sget v9, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 371
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->isGraphObjectSelected(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p0, v0, v9}, Lcom/facebook/widget/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    .line 374
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowPicture()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 375
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureUrlOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URL;

    move-result-object v2

    .line 377
    .local v2, "pictureURL":Ljava/net/URL;
    if-eqz v2, :cond_3

    .line 378
    sget v9, Lcom/facebook/android/R$id;->com_facebook_picker_image:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 381
    .local v3, "profilePic":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 382
    iget-object v9, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/widget/ImageResponse;

    .line 383
    .local v4, "response":Lcom/facebook/widget/ImageResponse;
    invoke-virtual {v4}, Lcom/facebook/widget/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    invoke-virtual {v4}, Lcom/facebook/widget/ImageResponse;->getRequest()Lcom/facebook/widget/ImageRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 390
    .end local v2    # "pictureURL":Ljava/net/URL;
    .end local v3    # "profilePic":Landroid/widget/ImageView;
    .end local v4    # "response":Lcom/facebook/widget/ImageResponse;
    :cond_3
    :goto_1
    return-void

    .line 365
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 386
    .restart local v2    # "pictureURL":Ljava/net/URL;
    .restart local v3    # "profilePic":Landroid/widget/ImageView;
    :cond_5
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/widget/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public prioritizeViewRange(III)V
    .locals 13
    .param p1, "firstVisibleItem"    # I
    .param p2, "lastVisibleItem"    # I
    .param p3, "prefetchBuffer"    # I

    .prologue
    .line 179
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    if-ge p2, p1, :cond_1

    .line 236
    :cond_0
    return-void

    .line 193
    :cond_1
    move v4, p2

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 194
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v8

    .line 195
    .local v8, "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v11, v8, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v11, :cond_2

    .line 196
    iget-object v11, v8, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p0, v11}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "id":Ljava/lang/String;
    iget-object v11, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/widget/ImageRequest;

    .line 198
    .local v7, "request":Lcom/facebook/widget/ImageRequest;
    if-eqz v7, :cond_2

    .line 199
    invoke-static {v7}, Lcom/facebook/widget/ImageDownloader;->prioritizeRequest(Lcom/facebook/widget/ImageRequest;)V

    .line 193
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "request":Lcom/facebook/widget/ImageRequest;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 206
    .end local v8    # "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    :cond_3
    const/4 v11, 0x0

    sub-int v12, p1, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 207
    .local v9, "start":I
    add-int v11, p2, p3

    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 208
    .local v1, "end":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v3, "graphObjectsToPrefetchPicturesFor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v4, v9

    :goto_1
    if-ge v4, p1, :cond_5

    .line 211
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v8

    .line 212
    .restart local v8    # "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v11, v8, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v11, :cond_4

    .line 213
    iget-object v11, v8, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    .end local v8    # "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    :cond_5
    add-int/lit8 v4, p2, 0x1

    :goto_2
    if-gt v4, v1, :cond_7

    .line 217
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v8

    .line 218
    .restart local v8    # "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v11, v8, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v11, :cond_6

    .line 219
    iget-object v11, v8, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 222
    .end local v8    # "sectionAndItem":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/model/GraphObject;

    .line 223
    .local v2, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    invoke-virtual {p0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureUrlOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URL;

    move-result-object v10

    .line 224
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {p0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .restart local v6    # "id":Ljava/lang/String;
    iget-object v11, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    .local v0, "alreadyPrefetching":Z
    iget-object v11, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    if-nez v0, :cond_8

    .line 233
    const/4 v11, 0x0

    invoke-direct {p0, v6, v10, v11}, Lcom/facebook/widget/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V

    goto :goto_3
.end method

.method public rebuildAndNotify()V
    .locals 0

    .prologue
    .line 174
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-direct {p0}, Lcom/facebook/widget/GraphObjectAdapter;->rebuildSections()V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 176
    return-void
.end method

.method public setDataNeededListener(Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;)V
    .locals 0
    .param p1, "dataNeededListener"    # Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    .prologue
    .line 145
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    .line 146
    return-void
.end method

.method setFilter(Lcom/facebook/widget/GraphObjectAdapter$Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "filter":Lcom/facebook/widget/GraphObjectAdapter$Filter;, "Lcom/facebook/widget/GraphObjectAdapter$Filter<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    .line 415
    return-void
.end method

.method public setGroupByField(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupByField"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    .prologue
    .line 153
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    .line 154
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 0
    .param p1, "showCheckbox"    # Z

    .prologue
    .line 137
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->showCheckbox:Z

    .line 138
    return-void
.end method

.method public setShowPicture(Z)V
    .locals 0
    .param p1, "showPicture"    # Z

    .prologue
    .line 129
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->showPicture:Z

    .line 130
    return-void
.end method

.method public setSortFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, "sortFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    .line 114
    return-void
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "graphObjectSelected"    # Z

    .prologue
    .line 423
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter;, "Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    return-void
.end method
