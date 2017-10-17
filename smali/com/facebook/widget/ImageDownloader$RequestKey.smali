.class Lcom/facebook/widget/ImageDownloader$RequestKey;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestKey"
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field tag:Ljava/lang/Object;

.field url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/lang/Object;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    .line 279
    iput-object p2, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    .line 280
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/facebook/widget/ImageDownloader$RequestKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 297
    check-cast v0, Lcom/facebook/widget/ImageDownloader$RequestKey;

    .line 298
    .local v0, "compareTo":Lcom/facebook/widget/ImageDownloader$RequestKey;
    iget-object v2, v0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    iget-object v3, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 301
    .end local v0    # "compareTo":Lcom/facebook/widget/ImageDownloader$RequestKey;
    :cond_0
    :goto_0
    return v1

    .line 298
    .restart local v0    # "compareTo":Lcom/facebook/widget/ImageDownloader$RequestKey;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 284
    const/16 v0, 0x1d

    .line 286
    .local v0, "result":I
    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x431

    .line 287
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 289
    return v0
.end method
