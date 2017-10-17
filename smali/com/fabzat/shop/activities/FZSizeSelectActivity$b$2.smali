.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$2;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$2;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$2;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->c(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    .line 460
    return-void
.end method
