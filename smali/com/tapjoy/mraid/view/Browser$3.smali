.class Lcom/tapjoy/mraid/view/Browser$3;
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
    .line 168
    iput-object p1, p0, Lcom/tapjoy/mraid/view/Browser$3;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/tapjoy/mraid/view/Browser$3;->this$0:Lcom/tapjoy/mraid/view/Browser;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 173
    .local v0, "wv":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 174
    return-void
.end method
