.class Lcom/fabzat/shop/manager/FZTypeFaceManager$1;
.super Ljava/lang/Object;
.source "FZTypeFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/manager/FZTypeFaceManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cT:Lcom/fabzat/shop/manager/FZTypeFaceManager;

.field private final synthetic cU:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/manager/FZTypeFaceManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;->cT:Lcom/fabzat/shop/manager/FZTypeFaceManager;

    iput-object p2, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;->cU:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;->cT:Lcom/fabzat/shop/manager/FZTypeFaceManager;

    iget-object v1, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;->cU:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/handsean.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->a(Lcom/fabzat/shop/manager/FZTypeFaceManager;Landroid/graphics/Typeface;)V

    .line 44
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;->cT:Lcom/fabzat/shop/manager/FZTypeFaceManager;

    iget-object v1, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;->cU:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/helveticaneue_condensedbold.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/manager/FZTypeFaceManager;->b(Lcom/fabzat/shop/manager/FZTypeFaceManager;Landroid/graphics/Typeface;)V

    .line 46
    return-void
.end method
