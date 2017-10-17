.class Lcom/quattroplay/GraalEra/QPlayActivity$10;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->requestNewFacebookGraphWithParams(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$fmethod:Lcom/facebook/HttpMethod;

.field final synthetic val$fparams:Landroid/os/Bundle;

.field final synthetic val$furl:Ljava/lang/String;

.field final synthetic val$session:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$session:Lcom/facebook/Session;

    iput-object p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$furl:Ljava/lang/String;

    iput-object p4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$fparams:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$fmethod:Lcom/facebook/HttpMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 819
    new-instance v0, Lcom/facebook/Request;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$furl:Ljava/lang/String;

    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$fparams:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$10;->val$fmethod:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/quattroplay/GraalEra/QPlayActivity$10$1;

    invoke-direct {v5, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$10$1;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity$10;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 830
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 831
    return-void
.end method
