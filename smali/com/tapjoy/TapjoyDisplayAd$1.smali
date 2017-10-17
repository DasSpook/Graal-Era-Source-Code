.class Lcom/tapjoy/TapjoyDisplayAd$1;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView;

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v2}, Lcom/tapjoy/TapjoyDisplayAd;->access$000(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    .line 184
    return-void
.end method
