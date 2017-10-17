.class Lcom/tapjoy/mraid/controller/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/controller/Utility;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/controller/Utility;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$entries:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/controller/Utility;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/tapjoy/mraid/controller/Utility$1;->this$0:Lcom/tapjoy/mraid/controller/Utility;

    iput-object p2, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$entries:Ljava/util/List;

    iput-object p3, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$date:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$entries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 325
    .local v0, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Utility$1;->this$0:Lcom/tapjoy/mraid/controller/Utility;

    const-string v1, "ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$date:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$body:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4, v5}, Lcom/tapjoy/mraid/controller/Utility;->access$000(Lcom/tapjoy/mraid/controller/Utility;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 327
    return-void
.end method
