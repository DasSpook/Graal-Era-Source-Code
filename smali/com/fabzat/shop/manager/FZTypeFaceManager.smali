.class public Lcom/fabzat/shop/manager/FZTypeFaceManager;
.super Ljava/lang/Object;
.source "FZTypeFaceManager.java"


# static fields
.field private static cQ:Lcom/fabzat/shop/manager/FZTypeFaceManager;


# instance fields
.field private cR:Landroid/graphics/Typeface;

.field private cS:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/manager/FZTypeFaceManager;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager;->cR:Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic b(Lcom/fabzat/shop/manager/FZTypeFaceManager;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager;->cS:Landroid/graphics/Typeface;

    return-void
.end method

.method public static getInstance()Lcom/fabzat/shop/manager/FZTypeFaceManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fabzat/shop/manager/FZTypeFaceManager;->cQ:Lcom/fabzat/shop/manager/FZTypeFaceManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/fabzat/shop/manager/FZTypeFaceManager;

    invoke-direct {v0}, Lcom/fabzat/shop/manager/FZTypeFaceManager;-><init>()V

    sput-object v0, Lcom/fabzat/shop/manager/FZTypeFaceManager;->cQ:Lcom/fabzat/shop/manager/FZTypeFaceManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/fabzat/shop/manager/FZTypeFaceManager;->cQ:Lcom/fabzat/shop/manager/FZTypeFaceManager;

    return-object v0
.end method


# virtual methods
.method public getHandsean()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager;->cR:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getHelvetica()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZTypeFaceManager;->cS:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;

    invoke-direct {v1, p0, p1}, Lcom/fabzat/shop/manager/FZTypeFaceManager$1;-><init>(Lcom/fabzat/shop/manager/FZTypeFaceManager;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method
