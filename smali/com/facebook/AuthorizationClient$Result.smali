.class Lcom/facebook/AuthorizationClient$Result;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AuthorizationClient$Result$Code;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final code:Lcom/facebook/AuthorizationClient$Result$Code;

.field final errorMessage:Ljava/lang/String;

.field final token:Lcom/facebook/AccessToken;


# direct methods
.method private constructor <init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Lcom/facebook/AuthorizationClient$Result$Code;
    .param p2, "token"    # Lcom/facebook/AccessToken;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p2, p0, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    .line 819
    iput-object p3, p0, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    .line 820
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 821
    return-void
.end method

.method static createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 828
    new-instance v0, Lcom/facebook/AuthorizationClient$Result;

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    return-object v0
.end method

.method static createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    .locals 4
    .param p0, "errorType"    # Ljava/lang/String;
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 832
    move-object v0, p0

    .line 833
    .local v0, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_0
    new-instance v1, Lcom/facebook/AuthorizationClient$Result;

    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    return-object v1
.end method

.method static createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;
    .locals 3
    .param p0, "token"    # Lcom/facebook/AccessToken;

    .prologue
    .line 824
    new-instance v0, Lcom/facebook/AuthorizationClient$Result;

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    return-object v0
.end method
