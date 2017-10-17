.class final Lcom/distimo/sdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/distimo/sdk/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/distimo/sdk/k;

    iget-object v1, p0, Lcom/distimo/sdk/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/distimo/sdk/k;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/distimo/sdk/f;->a(Lcom/distimo/sdk/k;)Lcom/distimo/sdk/k;

    invoke-static {}, Lcom/distimo/sdk/f;->a()Lcom/distimo/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/distimo/sdk/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/distimo/sdk/f;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {}, Lcom/distimo/sdk/f;->b()V

    return-void
.end method
