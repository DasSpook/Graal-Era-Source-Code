.class Lcom/fabzat/shop/activities/FZIntroDialog$1;
.super Landroid/webkit/WebViewClient;
.source "FZIntroDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZIntroDialog;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Lcom/fabzat/shop/activities/FZIntroDialog;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZIntroDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$1;->H:Lcom/fabzat/shop/activities/FZIntroDialog;

    .line 113
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 116
    return-void
.end method
