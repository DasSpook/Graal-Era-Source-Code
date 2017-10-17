.class final Lcom/facebook/internal/FileLruCache$ModifiedFile;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModifiedFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/internal/FileLruCache$ModifiedFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final modified:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    .line 573
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    .line 574
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I
    .locals 4
    .param p1, "another"    # Lcom/facebook/internal/FileLruCache$ModifiedFile;

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 587
    const/4 v0, -0x1

    .line 591
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 589
    const/4 v0, 0x1

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 567
    check-cast p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 597
    instance-of v0, p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    return-object v0
.end method

.method getModified()J
    .locals 2

    .prologue
    .line 581
    iget-wide v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    return-wide v0
.end method
