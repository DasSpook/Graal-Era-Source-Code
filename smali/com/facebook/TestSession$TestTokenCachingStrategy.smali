.class final Lcom/facebook/TestSession$TestTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;
.source "TestSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/TestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TestTokenCachingStrategy"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/TestSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/TestSession$1;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/facebook/TestSession$TestTokenCachingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/TestSession$TestTokenCachingStrategy;->bundle:Landroid/os/Bundle;

    .line 514
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/facebook/TestSession$TestTokenCachingStrategy;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "value"    # Landroid/os/Bundle;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/facebook/TestSession$TestTokenCachingStrategy;->bundle:Landroid/os/Bundle;

    .line 509
    return-void
.end method
