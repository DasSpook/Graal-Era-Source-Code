.class public abstract Lcom/fabzat/shop/activities/FZActivity;
.super Landroid/app/Activity;
.source "FZActivity.java"


# static fields
.field public static final REQUEST_CODE:I = 0x29a

.field public static final RESULT_FINISH:I = 0x29a


# instance fields
.field protected _resManager:Lcom/fabzat/shop/manager/FZResourceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected findViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawable(Ljava/lang/String;)I
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/fabzat/shop/utils/FZTools;->getDrawable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getId(Ljava/lang/String;)I
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p1}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLayout(Ljava/lang/String;)I
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p1}, Lcom/fabzat/shop/utils/FZTools;->getLayout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getResourceManager()Lcom/fabzat/shop/manager/FZResourceManager;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZActivity;->_resManager:Lcom/fabzat/shop/manager/FZResourceManager;

    return-object v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringId(Ljava/lang/String;)I
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZActivity;->_resManager:Lcom/fabzat/shop/manager/FZResourceManager;

    .line 34
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 48
    invoke-static {p0}, Lcom/fabzat/shop/utils/FZTools;->setLogo(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 50
    return-void
.end method

.method protected setContentView(Ljava/lang/String;)V
    .locals 3
    .param p1, "layoutResID"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, "res":I
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 43
    return-void
.end method

.method protected setNextButton(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZActivity;->showNextButton(Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    const-string v0, "fz_window_title"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZActivity;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fabzat/shop/activities/FZActivity;->a(ILjava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method protected showNextButton(Z)Landroid/view/View;
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 75
    const-string v1, "fz_next_btn"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZActivity;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 79
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .end local v0    # "v":Landroid/view/View;
    :goto_1
    return-object v0

    .line 79
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
