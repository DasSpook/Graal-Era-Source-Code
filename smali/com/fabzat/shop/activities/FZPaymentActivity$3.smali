.class Lcom/fabzat/shop/activities/FZPaymentActivity$3;
.super Landroid/webkit/WebViewClient;
.source "FZPaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZPaymentActivity;->onReceiveUI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ay:Lcom/fabzat/shop/activities/FZPaymentActivity;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZPaymentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity$3;->ay:Lcom/fabzat/shop/activities/FZPaymentActivity;

    .line 168
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {}, Lcom/fabzat/shop/activities/FZPaymentActivity;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity$3;->ay:Lcom/fabzat/shop/activities/FZPaymentActivity;

    invoke-static {v1, p2}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Lcom/fabzat/shop/activities/FZPaymentActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 184
    :goto_0
    return v1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity$3;->ay:Lcom/fabzat/shop/activities/FZPaymentActivity;

    invoke-static {v1, p2}, Lcom/fabzat/shop/activities/FZPaymentActivity;->b(Lcom/fabzat/shop/activities/FZPaymentActivity;Ljava/lang/String;)Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    move-result-object v0

    .line 182
    .local v0, "event":Lcom/fabzat/shop/activities/FZPaymentActivity$a;
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity$3;->ay:Lcom/fabzat/shop/activities/FZPaymentActivity;

    invoke-static {v1, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Lcom/fabzat/shop/activities/FZPaymentActivity;Lcom/fabzat/shop/activities/FZPaymentActivity$a;)V

    .line 184
    const/4 v1, 0x1

    goto :goto_0
.end method
