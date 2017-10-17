.class Lcom/tapjoy/mraid/controller/Assets$1;
.super Ljava/lang/Object;
.source "Assets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/controller/Assets;->storePictureInit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/controller/Assets;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/controller/Assets;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tapjoy/mraid/controller/Assets$1;->this$0:Lcom/tapjoy/mraid/controller/Assets;

    iput-object p2, p0, Lcom/tapjoy/mraid/controller/Assets$1;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Assets$1;->this$0:Lcom/tapjoy/mraid/controller/Assets;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Assets$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/controller/Assets;->storePicture(Ljava/lang/String;)V

    .line 62
    return-void
.end method
