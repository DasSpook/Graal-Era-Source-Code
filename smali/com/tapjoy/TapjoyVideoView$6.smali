.class Lcom/tapjoy/TapjoyVideoView$6;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 630
    const-string v0, "VideoView"

    const-string v1, "dialog onCancel"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 634
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$500(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 635
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 637
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->access$702(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 638
    return-void
.end method
