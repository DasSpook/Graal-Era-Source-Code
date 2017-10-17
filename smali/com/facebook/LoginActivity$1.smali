.class Lcom/facebook/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/AuthorizationClient$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/LoginActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/LoginActivity$1;->this$0:Lcom/facebook/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/LoginActivity$1;->this$0:Lcom/facebook/LoginActivity;

    invoke-static {v0, p1}, Lcom/facebook/LoginActivity;->access$000(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V

    .line 71
    return-void
.end method
