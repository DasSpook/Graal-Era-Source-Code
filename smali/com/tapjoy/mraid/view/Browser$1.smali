.class Lcom/tapjoy/mraid/view/Browser$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/Browser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/Browser;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/Browser;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tapjoy/mraid/view/Browser$1;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/tapjoy/mraid/view/Browser$1;->this$0:Lcom/tapjoy/mraid/view/Browser;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 127
    .local v0, "wv":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/Browser$1;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/Browser;->finish()V

    goto :goto_0
.end method
