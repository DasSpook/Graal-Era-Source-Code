.class Lcom/tapjoy/mraid/view/MraidView$5$3;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView$5;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/mraid/view/MraidView$5;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView$5;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$5$3;->this$1:Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1146
    const-string v0, "MRAIDView"

    const-string v1, "** ON ERROR **"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$5$3;->this$1:Lcom/tapjoy/mraid/view/MraidView$5;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->videoViewCleanup()V

    .line 1148
    const/4 v0, 0x0

    return v0
.end method
