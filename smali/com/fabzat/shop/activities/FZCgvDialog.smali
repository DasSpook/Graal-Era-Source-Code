.class public Lcom/fabzat/shop/activities/FZCgvDialog;
.super Lcom/fabzat/shop/activities/FZDialog;
.source "FZCgvDialog.java"

# interfaces
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;


# instance fields
.field private t:Landroid/view/View;

.field private u:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/fabzat/shop/activities/FZActivity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 27
    const-string v1, "fz_cgv"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCgvDialog;->setContentView(Ljava/lang/String;)V

    .line 29
    const-string v1, "fz_navbar_title_cgv"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCgvDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCgvDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 31
    const-string v1, "fz_progressbar"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCgvDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->t:Landroid/view/View;

    .line 32
    const-string v1, "fz_cgv"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCgvDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->u:Landroid/webkit/WebView;

    .line 35
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->u:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->u:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->u:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 40
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->u:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 41
    const-string v1, "fz_next_btn"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCgvDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_CGV:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 50
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method


# virtual methods
.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->onError(Lcom/fabzat/shop/model/FZException;)V

    .line 70
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->u:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCgvDialog;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method
