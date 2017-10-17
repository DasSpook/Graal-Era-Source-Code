.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$1;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

.field private final synthetic bu:I


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$1;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    iput p2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$1;->bu:I

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$1;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v0

    iget v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$1;->bu:I

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->showInfo(I)V

    .line 448
    return-void
.end method
