.class public Lcom/fabzat/shop/utils/ui/FZTextView;
.super Landroid/widget/TextView;
.source "FZTextView.java"


# instance fields
.field private eg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v1, "FZTextView"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStyleables(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    .local v0, "ta":Landroid/content/res/TypedArray;
    const-string v1, "FZTextView_useRegularFont"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStyleable(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fabzat/shop/utils/ui/FZTextView;->eg:Z

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    iget-boolean v1, p0, Lcom/fabzat/shop/utils/ui/FZTextView;->eg:Z

    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->getInstance()Lcom/fabzat/shop/manager/FZTypeFaceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->getHelvetica()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->getInstance()Lcom/fabzat/shop/manager/FZTypeFaceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->getHandsean()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
