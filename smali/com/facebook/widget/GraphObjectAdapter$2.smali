.class Lcom/facebook/widget/GraphObjectAdapter$2;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"

# interfaces
.implements Lcom/facebook/widget/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/GraphObjectAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$profileId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/widget/GraphObjectAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 746
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter$2;, "Lcom/facebook/widget/GraphObjectAdapter.2;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter$2;->this$0:Lcom/facebook/widget/GraphObjectAdapter;

    iput-object p2, p0, Lcom/facebook/widget/GraphObjectAdapter$2;->val$profileId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/widget/GraphObjectAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/widget/ImageResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/widget/ImageResponse;

    .prologue
    .line 749
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter$2;, "Lcom/facebook/widget/GraphObjectAdapter.2;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter$2;->this$0:Lcom/facebook/widget/GraphObjectAdapter;

    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter$2;->val$profileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/widget/GraphObjectAdapter;->access$200(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/widget/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 750
    return-void
.end method
