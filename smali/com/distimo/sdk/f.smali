.class final Lcom/distimo/sdk/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:J

.field private static d:Landroid/os/Handler;

.field private static e:Lcom/distimo/sdk/k;

.field private static f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/distimo/sdk/f;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/distimo/sdk/f;->b:Z

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/distimo/sdk/f;->c:J

    return-void
.end method

.method static synthetic a()Lcom/distimo/sdk/k;
    .locals 1

    sget-object v0, Lcom/distimo/sdk/f;->e:Lcom/distimo/sdk/k;

    return-object v0
.end method

.method static synthetic a(Lcom/distimo/sdk/k;)Lcom/distimo/sdk/k;
    .locals 0

    sput-object p0, Lcom/distimo/sdk/f;->e:Lcom/distimo/sdk/k;

    return-object p0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/distimo/sdk/f;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/distimo/sdk/f;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/distimo/sdk/f;->b:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "EventManager"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/distimo/sdk/f;->d:Landroid/os/Handler;

    new-instance v0, Lcom/distimo/sdk/g;

    invoke-direct {v0, p0}, Lcom/distimo/sdk/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Lcom/distimo/sdk/i;)V
    .locals 3

    sget-object v1, Lcom/distimo/sdk/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/distimo/sdk/f;->b:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/distimo/sdk/f;->d:Landroid/os/Handler;

    new-instance v2, Lcom/distimo/sdk/h;

    invoke-direct {v2, p0}, Lcom/distimo/sdk/h;-><init>(Lcom/distimo/sdk/i;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/distimo/sdk/f;->f()V

    return-void
.end method

.method static synthetic b(Lcom/distimo/sdk/i;)V
    .locals 1

    sget-object v0, Lcom/distimo/sdk/f;->e:Lcom/distimo/sdk/k;

    invoke-virtual {v0, p0}, Lcom/distimo/sdk/k;->a(Lcom/distimo/sdk/i;)Z

    sget-object v0, Lcom/distimo/sdk/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/distimo/sdk/f;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/distimo/sdk/i;)V
    .locals 0

    invoke-static {p0}, Lcom/distimo/sdk/f;->e(Lcom/distimo/sdk/i;)V

    return-void
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lcom/distimo/sdk/f;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/distimo/sdk/i;)V
    .locals 4

    sget-object v1, Lcom/distimo/sdk/f;->a:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x3e8

    :try_start_0
    sput-wide v2, Lcom/distimo/sdk/f;->c:J

    sget-object v0, Lcom/distimo/sdk/f;->e:Lcom/distimo/sdk/k;

    invoke-virtual {v0, p0}, Lcom/distimo/sdk/k;->b(Lcom/distimo/sdk/i;)V

    sget-object v0, Lcom/distimo/sdk/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/distimo/sdk/f;->f()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()V
    .locals 6

    sget-object v1, Lcom/distimo/sdk/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/distimo/sdk/f;->c:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7d00

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sput-wide v2, Lcom/distimo/sdk/f;->c:J

    invoke-static {}, Lcom/distimo/sdk/f;->f()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Lcom/distimo/sdk/i;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/distimo/sdk/j;

    invoke-direct {v0, v2}, Lcom/distimo/sdk/j;-><init>(B)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/distimo/sdk/i;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/distimo/sdk/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static f()V
    .locals 2

    sget-object v0, Lcom/distimo/sdk/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/distimo/sdk/f;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/distimo/sdk/i;

    invoke-static {v0}, Lcom/distimo/sdk/f;->e(Lcom/distimo/sdk/i;)V

    :cond_0
    return-void
.end method
