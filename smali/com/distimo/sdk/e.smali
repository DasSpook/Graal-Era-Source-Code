.class final Lcom/distimo/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/distimo/sdk/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/distimo/sdk/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/distimo/sdk/DistimoSDK;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/distimo/sdk/DistimoSDK;->a()Landroid/os/Handler;

    invoke-static {}, Lcom/distimo/sdk/DistimoSDK;->b()Ljava/lang/Runnable;

    return-void
.end method
