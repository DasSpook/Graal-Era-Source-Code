.class Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;
.super Landroid/os/AsyncTask;
.source "TJAdUnitJSBridge.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitJSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowWebView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitJSBridge;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V
    .locals 0
    .param p2, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1099
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->webView:Landroid/webkit/WebView;

    .line 1100
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1092
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->doInBackground([Ljava/lang/Boolean;)[Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 0
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    .line 1104
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1092
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->onPostExecute([Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    .line 1109
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1110
    .local v1, "visible":Z
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1112
    .local v0, "transparent":Z
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView$1;-><init>(Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;ZZ)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1166
    return-void
.end method
