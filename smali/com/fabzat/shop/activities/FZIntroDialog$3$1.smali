.class Lcom/fabzat/shop/activities/FZIntroDialog$3$1;
.super Ljava/lang/Object;
.source "FZIntroDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZIntroDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic I:Lcom/fabzat/shop/activities/FZActivity;

.field private final synthetic J:Z

.field private final synthetic K:Z

.field final synthetic L:Lcom/fabzat/shop/activities/FZIntroDialog$3;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZIntroDialog$3;Lcom/fabzat/shop/activities/FZActivity;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->L:Lcom/fabzat/shop/activities/FZIntroDialog$3;

    iput-object p2, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->I:Lcom/fabzat/shop/activities/FZActivity;

    iput-boolean p3, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->J:Z

    iput-boolean p4, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->K:Z

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->I:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-boolean v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->J:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->I:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZIntroDialog;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    :cond_2
    new-instance v0, Lcom/fabzat/shop/activities/FZIntroDialog;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->I:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v0, v1}, Lcom/fabzat/shop/activities/FZIntroDialog;-><init>(Landroid/app/Activity;)V

    .line 291
    .local v0, "dg":Lcom/fabzat/shop/activities/FZIntroDialog;
    iget-boolean v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->K:Z

    if-eqz v1, :cond_3

    .line 292
    invoke-static {v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->b(Lcom/fabzat/shop/activities/FZIntroDialog;)Lcom/fabzat/shop/activities/FZIntroDialog;

    .line 294
    :cond_3
    iget-boolean v1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;->J:Z

    if-eqz v1, :cond_4

    .line 295
    invoke-static {v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->c(Lcom/fabzat/shop/activities/FZIntroDialog;)Lcom/fabzat/shop/activities/FZIntroDialog;

    .line 297
    :cond_4
    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->show()V

    goto :goto_0
.end method
