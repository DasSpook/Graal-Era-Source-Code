.class Lcom/facebook/widget/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/widget/WebDialog;
    .param p2, "x1"    # Lcom/facebook/widget/WebDialog$1;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 377
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 359
    const-string v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 361
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 364
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    .line 341
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 342
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v3, 0x0

    .line 349
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 351
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    .line 352
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 353
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 355
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 287
    const-string v8, "FacebookSDK.WebDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Redirect URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v8, "fbconnect://success"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 289
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 291
    .local v6, "values":Landroid/os/Bundle;
    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 293
    const-string v8, "error_type"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_0
    const-string v8, "error_msg"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "errorMessage":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 298
    const-string v8, "error_description"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    :cond_1
    const-string v8, "error_code"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "errorCodeString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 302
    .local v1, "errorCode":I
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 304
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 310
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, -0x1

    if-ne v1, v8, :cond_3

    .line 312
    iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v8, v6}, Lcom/facebook/widget/WebDialog;->access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V

    .line 321
    :goto_1
    iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 333
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorCodeString":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v6    # "values":Landroid/os/Bundle;
    :goto_2
    return v7

    .line 305
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "errorCode":I
    .restart local v2    # "errorCodeString":Ljava/lang/String;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "values":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 306
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0

    .line 313
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    if-eqz v0, :cond_5

    const-string v8, "access_denied"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "OAuthAccessDeniedException"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 315
    :cond_4
    iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v8}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    goto :goto_1

    .line 317
    :cond_5
    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v5, "requestError":Lcom/facebook/FacebookRequestError;
    iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v9, Lcom/facebook/FacebookServiceException;

    invoke-direct {v9, v5, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 323
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorCodeString":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v5    # "requestError":Lcom/facebook/FacebookRequestError;
    .end local v6    # "values":Landroid/os/Bundle;
    :cond_6
    const-string v8, "fbconnect://cancel"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 324
    iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {v8}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    .line 325
    iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/widget/WebDialog;->dismiss()V

    goto :goto_2

    .line 327
    :cond_7
    const-string v8, "touch"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 328
    const/4 v7, 0x0

    goto :goto_2

    .line 331
    :cond_8
    iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
