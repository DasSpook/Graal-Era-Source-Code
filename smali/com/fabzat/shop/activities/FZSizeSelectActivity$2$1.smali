.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$2$1;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bo:Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2$1;->bo:Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2$1;->bo:Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->g(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->init()V

    .line 149
    return-void
.end method
