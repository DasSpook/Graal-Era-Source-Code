.class Lcom/facebook/internal/FileLruCache$1;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Lcom/facebook/internal/FileLruCache$StreamCloseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;

.field final synthetic val$buffer:Ljava/io/File;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$1;->this$0:Lcom/facebook/internal/FileLruCache;

    iput-object p2, p0, Lcom/facebook/internal/FileLruCache$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FileLruCache$1;->val$buffer:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$1;->this$0:Lcom/facebook/internal/FileLruCache;

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/FileLruCache$1;->val$buffer:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FileLruCache;->access$000(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V

    .line 190
    return-void
.end method
