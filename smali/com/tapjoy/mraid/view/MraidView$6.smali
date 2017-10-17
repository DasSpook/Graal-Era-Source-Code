.class Lcom/tapjoy/mraid/view/MraidView$6;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Lcom/tapjoy/mraid/listener/Player;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView;->playVideoImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$6;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 1777
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$6;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1779
    .local v0, "background":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1780
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$6;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1781
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView$6;->onComplete()V

    .line 1773
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 1768
    return-void
.end method
