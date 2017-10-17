.class Lcom/quattroplay/GraalEra/QPlayActivity$11;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->showFacebookWebDialogWithParams(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$faction:Ljava/lang/String;

.field final synthetic val$fcontext:Landroid/content/Context;

.field final synthetic val$fparams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11;->val$fcontext:Landroid/content/Context;

    iput-object p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11;->val$faction:Ljava/lang/String;

    iput-object p4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11;->val$fparams:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 895
    new-instance v0, Lcom/facebook/widget/WebDialog;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11;->val$fcontext:Landroid/content/Context;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11;->val$faction:Ljava/lang/String;

    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$11;->val$fparams:Landroid/os/Bundle;

    const v4, 0x1030010

    new-instance v5, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;

    invoke-direct {v5, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$11$1;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity$11;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 917
    .local v0, "dialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 918
    return-void
.end method
