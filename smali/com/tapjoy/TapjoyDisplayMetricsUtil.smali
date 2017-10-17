.class public Lcom/tapjoy/TapjoyDisplayMetricsUtil;
.super Ljava/lang/Object;
.source "TapjoyDisplayMetricsUtil.java"


# instance fields
.field private configuration:Landroid/content/res/Configuration;

.field private context:Landroid/content/Context;

.field private metrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "theContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->context:Landroid/content/Context;

    .line 33
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->metrics:Landroid/util/DisplayMetrics;

    .line 34
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 35
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->configuration:Landroid/content/res/Configuration;

    .line 38
    return-void
.end method


# virtual methods
.method public getScreenDensity()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public getScreenLayoutSize()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->configuration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
