.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    new-instance v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2$1;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2$1;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
