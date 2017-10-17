.class Lcom/facebook/widget/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/widget/ImageRequest$Callback;

.field private callerTag:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private imageUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/net/URL;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "imageUrl"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/facebook/widget/ImageRequest$Builder;->imageUrl:Ljava/net/URL;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/ImageRequest$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/ImageRequest$Builder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/ImageRequest$Builder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->imageUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/widget/ImageRequest$Builder;)Lcom/facebook/widget/ImageRequest$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/ImageRequest$Builder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/widget/ImageRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/ImageRequest$Builder;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->allowCachedRedirects:Z

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/widget/ImageRequest$Builder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->callerTag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method build()Lcom/facebook/widget/ImageRequest;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/facebook/widget/ImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/ImageRequest;-><init>(Lcom/facebook/widget/ImageRequest$Builder;Lcom/facebook/widget/ImageRequest$1;)V

    return-object v0
.end method

.method setAllowCachedRedirects(Z)Lcom/facebook/widget/ImageRequest$Builder;
    .locals 0
    .param p1, "allowCachedRedirects"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->allowCachedRedirects:Z

    .line 138
    return-object p0
.end method

.method setCallback(Lcom/facebook/widget/ImageRequest$Callback;)Lcom/facebook/widget/ImageRequest$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/facebook/widget/ImageRequest$Callback;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    .line 128
    return-object p0
.end method

.method setCallerTag(Ljava/lang/Object;)Lcom/facebook/widget/ImageRequest$Builder;
    .locals 0
    .param p1, "callerTag"    # Ljava/lang/Object;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->callerTag:Ljava/lang/Object;

    .line 133
    return-object p0
.end method
