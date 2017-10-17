.class Lcom/facebook/widget/FacebookFragment;
.super Landroid/support/v4/app/Fragment;
.source "FacebookFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FacebookFragment$1;,
        Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;
    }
.end annotation


# instance fields
.field private sessionTracker:Lcom/facebook/internal/SessionTracker;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 287
    return-void
.end method

.method private openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/internal/SessionAuthorizationType;)V
    .locals 5
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "behavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p4, "activityCode"    # I
    .param p5, "authType"    # Lcom/facebook/internal/SessionAuthorizationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I",
            "Lcom/facebook/internal/SessionAuthorizationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v3}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 265
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    :cond_0
    new-instance v3, Lcom/facebook/Session$Builder;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v2

    .line 267
    .local v2, "session":Lcom/facebook/Session;
    invoke-static {v2}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 268
    move-object v0, v2

    .line 270
    .end local v2    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 271
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v3, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 275
    .local v1, "openRequest":Lcom/facebook/Session$OpenRequest;
    sget-object v3, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v3, p5}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 282
    .end local v0    # "currentSession":Lcom/facebook/Session;
    .end local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_2
    :goto_0
    return-void

    .line 278
    .restart local v0    # "currentSession":Lcom/facebook/Session;
    .restart local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method


# virtual methods
.method protected final closeSession()V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 165
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 169
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :cond_0
    return-void
.end method

.method protected final closeSessionAndClearTokenInformation()V
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 177
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 181
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :cond_0
    return-void
.end method

.method protected final getAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 140
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 142
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :cond_0
    return-object v1
.end method

.method protected final getExpirationDate()Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 154
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    .line 156
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :cond_0
    return-object v1
.end method

.method protected final getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getSessionPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 192
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    .line 194
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :cond_0
    return-object v1
.end method

.method protected final getSessionState()Lcom/facebook/SessionState;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 126
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    .line 128
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :cond_0
    return-object v1
.end method

.method protected final isSessionOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 115
    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;-><init>(Lcom/facebook/widget/FacebookFragment;Lcom/facebook/widget/FacebookFragment$1;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    .line 50
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    .line 67
    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "state"    # Lcom/facebook/SessionState;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 90
    return-void
.end method

.method protected final openSession()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0, v0}, Lcom/facebook/widget/FacebookFragment;->openSessionForRead(Ljava/lang/String;Ljava/util/List;)V

    .line 203
    return-void
.end method

.method protected final openSessionForPublish(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    const v1, 0xface

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/widget/FacebookFragment;->openSessionForPublish(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    .line 244
    return-void
.end method

.method protected final openSessionForPublish(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V
    .locals 6
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "behavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p4, "activityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookFragment;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/internal/SessionAuthorizationType;)V

    .line 259
    return-void
.end method

.method protected final openSessionForRead(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    const v1, 0xface

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/widget/FacebookFragment;->openSessionForRead(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    .line 216
    return-void
.end method

.method protected final openSessionForRead(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V
    .locals 6
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "behavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p4, "activityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookFragment;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/internal/SessionAuthorizationType;)V

    .line 231
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 78
    :cond_0
    return-void
.end method
