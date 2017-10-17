.class Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;
.super Landroid/os/AsyncTask;
.source "TJWebViewJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJWebViewJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadJSTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJWebViewJSInterface;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V
    .locals 0
    .param p2, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->this$0:Lcom/tapjoy/TJWebViewJSInterface;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->webView:Landroid/webkit/WebView;

    .line 191
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method
