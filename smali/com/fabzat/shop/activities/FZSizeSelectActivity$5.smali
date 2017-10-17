.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$5;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity;->hideInfo()V
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
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$5;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$5;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->g(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->forceLayout()V

    .line 339
    return-void
.end method
