.class Lcom/facebook/widget/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ImageRequest$1;,
        Lcom/facebook/widget/ImageRequest$Builder;,
        Lcom/facebook/widget/ImageRequest$Callback;
    }
.end annotation


# static fields
.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final MIGRATION_PARAM:Ljava/lang/String; = "migration_overrides"

.field private static final MIGRATION_VALUE:Ljava/lang/String; = "{october_2012:true}"

.field private static final PROFILEPIC_URL_FORMAT:Ljava/lang/String; = "https://graph.facebook.com/%s/picture"

.field static final UNSPECIFIED_DIMENSION:I = 0x0

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/widget/ImageRequest$Callback;

.field private callerTag:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private imageUrl:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/ImageRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/facebook/widget/ImageRequest$Builder;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$000(Lcom/facebook/widget/ImageRequest$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->context:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$100(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->imageUrl:Ljava/net/URL;

    .line 85
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$200(Lcom/facebook/widget/ImageRequest$Builder;)Lcom/facebook/widget/ImageRequest$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    .line 86
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$300(Lcom/facebook/widget/ImageRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/ImageRequest;->allowCachedRedirects:Z

    .line 87
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$400(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->callerTag:Ljava/lang/Object;

    .line 88
    return-void

    .line 87
    :cond_0
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$400(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/ImageRequest$Builder;Lcom/facebook/widget/ImageRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/widget/ImageRequest$Builder;
    .param p2, "x1"    # Lcom/facebook/widget/ImageRequest$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/widget/ImageRequest;-><init>(Lcom/facebook/widget/ImageRequest$Builder;)V

    return-void
.end method

.method static getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URL;
    .locals 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    const-string v1, "userId"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 61
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 63
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Either width or height must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https://graph.facebook.com/%s/picture"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 69
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p2, :cond_1

    .line 70
    const-string v1, "height"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    .line 74
    const-string v1, "width"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    :cond_2
    const-string v1, "migration_overrides"

    const-string v2, "{october_2012:true}"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method getCallback()Lcom/facebook/widget/ImageRequest$Callback;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    return-object v0
.end method

.method getCallerTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->callerTag:Ljava/lang/Object;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method getImageUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->imageUrl:Ljava/net/URL;

    return-object v0
.end method

.method isCachedRedirectAllowed()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/facebook/widget/ImageRequest;->allowCachedRedirects:Z

    return v0
.end method
