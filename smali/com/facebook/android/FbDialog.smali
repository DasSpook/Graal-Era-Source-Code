.class public Lcom/facebook/android/FbDialog;
.super Lcom/facebook/widget/WebDialog;
.source "FbDialog.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mListener:Lcom/facebook/android/Facebook$DialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 42
    const v4, 0x1030010

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 43
    invoke-direct {p0, p4}, Lcom/facebook/android/FbDialog;->setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;
    .param p5, "theme"    # I

    .prologue
    .line 48
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 49
    invoke-direct {p0, p4}, Lcom/facebook/android/FbDialog;->setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 33
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;
    .param p4, "theme"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 38
    invoke-direct {p0, p3}, Lcom/facebook/android/FbDialog;->setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/android/FbDialog;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/android/FbDialog;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/facebook/FacebookException;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/facebook/android/FbDialog;->callDialogListener(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private callDialogListener(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 6
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 63
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    if-nez v3, :cond_0

    .line 82
    :goto_0
    return-void

    .line 67
    :cond_0
    if-eqz p1, :cond_1

    .line 68
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3, p1}, Lcom/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 70
    :cond_1
    instance-of v3, p2, Lcom/facebook/FacebookDialogException;

    if-eqz v3, :cond_2

    move-object v1, p2

    .line 71
    check-cast v1, Lcom/facebook/FacebookDialogException;

    .line 72
    .local v1, "facebookDialogException":Lcom/facebook/FacebookDialogException;
    new-instance v0, Lcom/facebook/android/DialogError;

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result v4

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getFailingUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    .local v0, "dialogError":Lcom/facebook/android/DialogError;
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3, v0}, Lcom/facebook/android/Facebook$DialogListener;->onError(Lcom/facebook/android/DialogError;)V

    goto :goto_0

    .line 75
    .end local v0    # "dialogError":Lcom/facebook/android/DialogError;
    .end local v1    # "facebookDialogException":Lcom/facebook/FacebookDialogException;
    :cond_2
    instance-of v3, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_3

    .line 76
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    .line 78
    :cond_3
    new-instance v2, Lcom/facebook/android/FacebookError;

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "facebookError":Lcom/facebook/android/FacebookError;
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3, v2}, Lcom/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    goto :goto_0
.end method

.method private setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 54
    new-instance v0, Lcom/facebook/android/FbDialog$1;

    invoke-direct {v0, p0}, Lcom/facebook/android/FbDialog$1;-><init>(Lcom/facebook/android/FbDialog;)V

    invoke-virtual {p0, v0}, Lcom/facebook/android/FbDialog;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 60
    return-void
.end method
