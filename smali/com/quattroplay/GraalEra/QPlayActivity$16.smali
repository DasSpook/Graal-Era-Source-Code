.class Lcom/quattroplay/GraalEra/QPlayActivity$16;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->createWebView()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$viewid:I


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;I)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$16;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$16;->val$viewid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1094
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$16;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-virtual {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1095
    .local v1, "view":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1096
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 1098
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$InsideWebViewClient;

    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$16;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/quattroplay/GraalEra/QPlayActivity$InsideWebViewClient;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Lcom/quattroplay/GraalEra/QPlayActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1099
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1101
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$16;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    const v3, 0x7f050072

    invoke-virtual {v2, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1102
    .local v0, "layout":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1105
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$16;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$800(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$16;->val$viewid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    return-void
.end method
