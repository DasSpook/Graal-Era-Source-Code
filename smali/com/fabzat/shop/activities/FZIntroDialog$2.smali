.class Lcom/fabzat/shop/activities/FZIntroDialog$2;
.super Ljava/lang/Object;
.source "FZIntroDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZIntroDialog;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Lcom/fabzat/shop/activities/FZIntroDialog;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZIntroDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZIntroDialog$2;->H:Lcom/fabzat/shop/activities/FZIntroDialog;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZIntroDialog$2;->H:Lcom/fabzat/shop/activities/FZIntroDialog;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZIntroDialog;->a(Lcom/fabzat/shop/activities/FZIntroDialog;)V

    .line 195
    return-void
.end method
