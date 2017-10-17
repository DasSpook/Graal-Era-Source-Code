.class public Lcom/fabzat/shop/activities/FZWaitDialog;
.super Landroid/app/Dialog;
.source "FZWaitDialog.java"


# instance fields
.field D:Landroid/widget/ProgressBar;

.field a:Landroid/app/Activity;

.field bD:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 30
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    const-string v6, "DialogTheme"

    invoke-static {v4, v5, v6}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/fabzat/shop/activities/FZWaitDialog;->requestWindowFeature(I)Z

    .line 33
    const-string v4, "fz_wait"

    invoke-virtual {p0, v4}, Lcom/fabzat/shop/activities/FZWaitDialog;->setContentView(Ljava/lang/String;)V

    .line 35
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 36
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZWaitDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 39
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 40
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 41
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 43
    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    const-string v4, "fz_wait_container"

    invoke-virtual {p0, v4}, Lcom/fabzat/shop/activities/FZWaitDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    .local v2, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 48
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZWaitDialog;->a:Landroid/app/Activity;

    .line 52
    const-string v4, "fz_wait_info"

    invoke-virtual {p0, v4}, Lcom/fabzat/shop/activities/FZWaitDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fabzat/shop/activities/FZWaitDialog;->bD:Landroid/widget/TextView;

    .line 53
    const-string v4, "fz_wait_progress"

    invoke-virtual {p0, v4}, Lcom/fabzat/shop/activities/FZWaitDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/fabzat/shop/activities/FZWaitDialog;->D:Landroid/widget/ProgressBar;

    .line 55
    invoke-virtual {p0, v7}, Lcom/fabzat/shop/activities/FZWaitDialog;->setCancelable(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public findViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZWaitDialog;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setContentView(Ljava/lang/String;)V
    .locals 3
    .param p1, "layoutResID"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "res":I
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 65
    return-void
.end method

.method public setIndeterminate()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZWaitDialog;->D:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 88
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZWaitDialog;->bD:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZWaitDialog;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 83
    return-void
.end method
