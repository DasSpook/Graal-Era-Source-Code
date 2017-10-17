.class Lcom/quattroplay/GraalEra/QPlayActivity$InsideWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "QPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsideWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;


# direct methods
.method private constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$InsideWebViewClient;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Lcom/quattroplay/GraalEra/QPlayActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p2, "x1"    # Lcom/quattroplay/GraalEra/QPlayActivity$1;

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lcom/quattroplay/GraalEra/QPlayActivity$InsideWebViewClient;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1191
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1192
    const/4 v0, 0x1

    return v0
.end method
