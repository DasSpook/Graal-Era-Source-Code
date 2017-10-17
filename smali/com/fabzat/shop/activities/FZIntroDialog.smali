.class public Lcom/fabzat/shop/activities/FZIntroDialog;
.super Landroid/app/Dialog;
.source "FZIntroDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ProgressBar;

.field private E:I

.field private final F:I

.field private final G:I

.field private a:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private v:Landroid/webkit/WebView;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/fabzat/shop/activities/FZIntroDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/activities/FZIntroDialog;->LOG_TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 61
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "style"

    const-string v8, "DialogTheme"

    invoke-static {v5, v7, v8}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    iput v9, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->E:I

    .line 55
    const/4 v5, 0x3

    iput v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->F:I

    .line 56
    const/16 v5, 0xbb8

    iput v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->G:I

    .line 63
    invoke-virtual {p0, v10}, Lcom/fabzat/shop/activities/FZIntroDialog;->requestWindowFeature(I)Z

    .line 64
    const-string v5, "fz_intro"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->setContentView(Ljava/lang/String;)V

    .line 67
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 71
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 72
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 73
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    const-string v5, "fz_wait_container"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .local v3, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Lcom/fabzat/shop/utils/FZTools;->isScreenSmall(Landroid/content/Context;)Z

    move-result v1

    .line 82
    .local v1, "isSmall":Z
    if-eqz v1, :cond_0

    move v5, v6

    :goto_0
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 83
    if-eqz v1, :cond_1

    :goto_1
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 84
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 87
    iput-boolean v9, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->w:Z

    .line 88
    iput-boolean v9, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->A:Z

    .line 89
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->a:Landroid/app/Activity;

    .line 91
    const-string v5, "fz_ok"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->B:Landroid/view/View;

    .line 92
    const-string v5, "fz_dontshow"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->C:Landroid/view/View;

    .line 94
    const-string v5, "fz_webview"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    .line 95
    const-string v5, "fz_progressbar"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->D:Landroid/widget/ProgressBar;

    .line 97
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->C:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->B:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    invoke-virtual {v5, p0}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const-string v5, "fz_wait_container"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const-string v5, "fz_info_container"

    invoke-direct {p0, v5}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 108
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 109
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    invoke-virtual {v5, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 110
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    const/high16 v6, 0x3000000

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 113
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    new-instance v6, Lcom/fabzat/shop/activities/FZIntroDialog$1;

    invoke-direct {v6, p0}, Lcom/fabzat/shop/activities/FZIntroDialog$1;-><init>(Lcom/fabzat/shop/activities/FZIntroDialog;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    sget-object v5, Lcom/fabzat/shop/dao/FZUrlType;->SHOP_INFO:Lcom/fabzat/shop/dao/FZUrlType;

    invoke-static {v5, p1}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->d:Ljava/lang/String;

    .line 121
    return-void

    .line 82
    :cond_0
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    goto/16 :goto_0

    .line 83
    :cond_1
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v6, v5, 0x3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZIntroDialog;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->i()V

    return-void
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    const-string v1, "FZ_INTRO_INFO"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "FZ_SHOW_INTRO"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method static synthetic b(Lcom/fabzat/shop/activities/FZIntroDialog;)Lcom/fabzat/shop/activities/FZIntroDialog;
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->l()Lcom/fabzat/shop/activities/FZIntroDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 234
    invoke-static {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/fabzat/shop/activities/FZIntroDialog;)Lcom/fabzat/shop/activities/FZIntroDialog;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->m()Lcom/fabzat/shop/activities/FZIntroDialog;

    move-result-object v0

    return-object v0
.end method

.method private findViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZIntroDialog;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getId(Ljava/lang/String;)I
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->j()V

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v1}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 150
    invoke-virtual {v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 185
    iget v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->E:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 186
    iget v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->E:I

    .line 188
    sget-object v0, Lcom/fabzat/shop/activities/FZIntroDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrying "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fabzat/shop/activities/FZIntroDialog$2;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZIntroDialog$2;-><init>(Lcom/fabzat/shop/activities/FZIntroDialog;)V

    .line 196
    const-wide/16 v2, 0xbb8

    .line 190
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->showConnectionErrorDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->a:Landroid/app/Activity;

    const-string v3, "FZ_INTRO_INFO"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FZ_SHOW_INTRO"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    return-void
.end method

.method private l()Lcom/fabzat/shop/activities/FZIntroDialog;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->w:Z

    .line 245
    return-object p0
.end method

.method public static launch(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/fabzat/shop/activities/FZActivity;

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-static {p0, v0, v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->launch(Lcom/fabzat/shop/activities/FZActivity;ZZ)V

    .line 263
    return-void
.end method

.method public static launch(Lcom/fabzat/shop/activities/FZActivity;ZZ)V
    .locals 4
    .param p0, "activity"    # Lcom/fabzat/shop/activities/FZActivity;
    .param p1, "hideButtons"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fabzat/shop/activities/FZIntroDialog$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/fabzat/shop/activities/FZIntroDialog$3;-><init>(Lcom/fabzat/shop/activities/FZActivity;ZZ)V

    .line 301
    const-wide/16 v2, 0x1f4

    .line 274
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void
.end method

.method public static launchForced(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/fabzat/shop/activities/FZActivity;

    .prologue
    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/fabzat/shop/activities/FZIntroDialog;->launch(Lcom/fabzat/shop/activities/FZActivity;ZZ)V

    .line 271
    return-void
.end method

.method private m()Lcom/fabzat/shop/activities/FZIntroDialog;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->A:Z

    .line 254
    return-object p0
.end method

.method private setContentView(Ljava/lang/String;)V
    .locals 3
    .param p1, "layoutResID"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "res":I
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 135
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 339
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "fz_wait_container"

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZIntroDialog;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "fz_dontshow"

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZIntroDialog;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->k()V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->dismiss()V

    goto :goto_0
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 1
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->dismiss()V

    .line 330
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->showConnectionErrorDialog(Landroid/content/Context;)V

    .line 331
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->v:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->d:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, "about:blank"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->D:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->D:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 322
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 160
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZIntroDialog;->i()V

    .line 164
    iget-boolean v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->w:Z

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "fz_hbar"

    invoke-direct {p0, v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const-string v0, "fz_vbar"

    invoke-direct {p0, v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
