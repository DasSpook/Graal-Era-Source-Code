.class public Lcom/fabzat/shop/activities/FZOrderDialog;
.super Lcom/fabzat/shop/activities/FZDialog;
.source "FZOrderDialog.java"

# interfaces
.implements Lcom/fabzat/shop/dao/connection/FZOnProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;
    }
.end annotation


# instance fields
.field private D:Landroid/widget/ProgressBar;

.field private ar:Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;

.field private as:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private at:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private h:Lcom/fabzat/shop/model/FZUser;

.field private s:Lcom/fabzat/shop/model/FZPendingOrder;


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;Lcom/fabzat/shop/model/FZUser;Lcom/fabzat/shop/model/FZPendingOrder;)V
    .locals 2
    .param p2, "user"    # Lcom/fabzat/shop/model/FZUser;
    .param p3, "pendingOrder"    # Lcom/fabzat/shop/model/FZPendingOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fabzat/shop/activities/FZActivity;",
            ":",
            "Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;",
            ">(TT;",
            "Lcom/fabzat/shop/model/FZUser;",
            "Lcom/fabzat/shop/model/FZPendingOrder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "activity":Lcom/fabzat/shop/activities/FZActivity;, "TT;"
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->setCancelable(Z)V

    .line 42
    const-string v0, "fz_order_upload"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->setContentView(Ljava/lang/String;)V

    .line 44
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->D:Landroid/widget/ProgressBar;

    .line 45
    const-string v0, "fz_percent"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->as:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 46
    const-string v0, "fz_upload_progress_info"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->at:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 48
    const-string v0, "fz_navbar_title_upload"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 49
    const-string v0, "fz_next_btn"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->ar:Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;

    .line 52
    iput-object p3, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    .line 53
    iput-object p2, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 54
    return-void
.end method


# virtual methods
.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 0
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->onError(Lcom/fabzat/shop/model/FZException;)V

    .line 86
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZOrderDialog;->dismiss()V

    .line 87
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->ar:Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->ar:Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;->onUpload(Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public onUpdateProgress(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->as:Lcom/fabzat/shop/utils/ui/FZTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const-class v0, Lcom/fabzat/shop/activities/FZOrderDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->at:Lcom/fabzat/shop/utils/ui/FZTextView;

    const-string v1, "fz_label_processing"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZOrderDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZDialog;->show()V

    .line 63
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_UPLOAD:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, p0, v0}, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;-><init>(Landroid/content/Context;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 67
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZOrderDialog;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addPendingOrder(Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 70
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method
