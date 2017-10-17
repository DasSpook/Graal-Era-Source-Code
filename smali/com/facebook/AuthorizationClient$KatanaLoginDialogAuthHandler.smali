.class Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;
.super Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KatanaLoginDialogAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method

.method private handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 644
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "errorType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 646
    sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    invoke-static {v1, v2}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    .line 653
    :cond_0
    :goto_0
    return-object v2

    .line 648
    :cond_1
    const-string v3, "ServiceDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 650
    const-string v3, "UserCanceled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 651
    invoke-static {v2}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    goto :goto_0

    .line 653
    :cond_2
    const-string v2, "error_description"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 619
    if-nez p3, :cond_0

    .line 621
    const-string v1, "Operation canceled"

    invoke-static {v1}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 633
    .local v0, "outcome":Lcom/facebook/AuthorizationClient$Result;
    :goto_0
    if-eqz v0, :cond_4

    .line 634
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    .line 639
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 622
    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_0
    invoke-static {p3}, Lcom/facebook/NativeProtocol;->isServiceDisabledResult20121101(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    const/4 v0, 0x0

    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 624
    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_1
    if-nez p2, :cond_2

    .line 625
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 627
    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_2
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 628
    const-string v1, "Unexpected resultCode from authorization."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 630
    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_3
    invoke-direct {p0, p3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 636
    :cond_4
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_1
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 5
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 608
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/NativeProtocol;->createLoginDialog20121101Intent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 612
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v1

    return v1
.end method
