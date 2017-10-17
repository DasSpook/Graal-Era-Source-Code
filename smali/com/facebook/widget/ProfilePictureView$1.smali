.class Lcom/facebook/widget/ProfilePictureView$1;
.super Ljava/lang/Object;
.source "ProfilePictureView.java"

# interfaces
.implements Lcom/facebook/widget/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ProfilePictureView;->sendImageRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ProfilePictureView;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView$1;->this$0:Lcom/facebook/widget/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/widget/ImageResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/facebook/widget/ImageResponse;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView$1;->this$0:Lcom/facebook/widget/ProfilePictureView;

    invoke-static {v0, p1}, Lcom/facebook/widget/ProfilePictureView;->access$000(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/widget/ImageResponse;)V

    .line 421
    return-void
.end method
