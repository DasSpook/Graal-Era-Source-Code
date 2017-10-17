.class Lcom/tapjoy/mraid/view/MraidView$1;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$1;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iput-object p2, p0, Lcom/tapjoy/mraid/view/MraidView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->val$url:Ljava/lang/String;

    const-string v2, "javascript"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->access$001(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 397
    :cond_0
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$1;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;-><init>(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView$1;->val$url:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
