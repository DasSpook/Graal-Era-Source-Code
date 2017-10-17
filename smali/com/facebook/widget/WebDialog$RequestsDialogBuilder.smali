.class public Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
.super Lcom/facebook/widget/WebDialog$BuilderBase;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestsDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<",
        "Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPREQUESTS_DIALOG:Ljava/lang/String; = "apprequests"

.field private static final DATA_PARAM:Ljava/lang/String; = "data"

.field private static final MESSAGE_PARAM:Ljava/lang/String; = "message"

.field private static final TITLE_PARAM:Ljava/lang/String; = "title"

.field private static final TO_PARAM:Ljava/lang/String; = "to"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;

    .prologue
    .line 670
    const-string v0, "apprequests"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 671
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 684
    const-string v0, "apprequests"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 685
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/WebDialog;
    .locals 1

    .prologue
    .line 655
    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-object p0
.end method
