.class final Lcom/distimo/sdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/distimo/sdk/i;


# direct methods
.method constructor <init>(Lcom/distimo/sdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/distimo/sdk/h;->a:Lcom/distimo/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/distimo/sdk/h;->a:Lcom/distimo/sdk/i;

    invoke-static {v0}, Lcom/distimo/sdk/f;->b(Lcom/distimo/sdk/i;)V

    invoke-static {}, Lcom/distimo/sdk/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/distimo/sdk/h;->a:Lcom/distimo/sdk/i;

    invoke-static {v0}, Lcom/distimo/sdk/f;->c(Lcom/distimo/sdk/i;)V

    :cond_0
    return-void
.end method
