.class Lcom/fabzat/shop/activities/FZIntroDialog$3;
.super Ljava/lang/Object;
.source "FZIntroDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZIntroDialog;->launch(Lcom/fabzat/shop/activities/FZActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic I:Lcom/fabzat/shop/activities/FZActivity;

.field private final synthetic J:Z

.field private final synthetic K:Z


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZActivity;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3;->I:Lcom/fabzat/shop/activities/FZActivity;

    iput-boolean p2, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3;->J:Z

    iput-boolean p3, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3;->K:Z

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3;->I:Lcom/fabzat/shop/activities/FZActivity;

    new-instance v1, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3;->I:Lcom/fabzat/shop/activities/FZActivity;

    iget-boolean v3, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3;->J:Z

    iget-boolean v4, p0, Lcom/fabzat/shop/activities/FZIntroDialog$3;->K:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/fabzat/shop/activities/FZIntroDialog$3$1;-><init>(Lcom/fabzat/shop/activities/FZIntroDialog$3;Lcom/fabzat/shop/activities/FZActivity;ZZ)V

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method
