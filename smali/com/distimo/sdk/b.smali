.class final Lcom/distimo/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/distimo/sdk/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/distimo/sdk/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/distimo/sdk/b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/distimo/sdk/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/distimo/sdk/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/distimo/sdk/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distimo/sdk/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/distimo/sdk/a;->a(Ljava/lang/String;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/distimo/sdk/b;->c:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
