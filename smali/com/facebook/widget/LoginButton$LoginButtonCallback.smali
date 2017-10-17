.class Lcom/facebook/widget/LoginButton$LoginButtonCallback;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginButtonCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/widget/LoginButton;
    .param p2, "x1"    # Lcom/facebook/widget/LoginButton$1;

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1400(Lcom/facebook/widget/LoginButton;)V

    .line 654
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1500(Lcom/facebook/widget/LoginButton;)V

    .line 655
    if-eqz p3, :cond_0

    .line 656
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0, p3}, Lcom/facebook/widget/LoginButton;->handleError(Ljava/lang/Exception;)V

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$900(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1600(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$900(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1600(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 662
    :cond_1
    return-void
.end method
