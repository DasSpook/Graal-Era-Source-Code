.class Lcom/facebook/Session$3$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/Session$3;

.field final synthetic val$callback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Session$3;Lcom/facebook/Session$StatusCallback;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/facebook/Session$3$1;->this$1:Lcom/facebook/Session$3;

    iput-object p2, p0, Lcom/facebook/Session$3$1;->val$callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/facebook/Session$3$1;->val$callback:Lcom/facebook/Session$StatusCallback;

    iget-object v1, p0, Lcom/facebook/Session$3$1;->this$1:Lcom/facebook/Session$3;

    iget-object v1, v1, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/Session$3$1;->this$1:Lcom/facebook/Session$3;

    iget-object v2, v2, Lcom/facebook/Session$3;->val$newState:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session$3$1;->this$1:Lcom/facebook/Session$3;

    iget-object v3, v3, Lcom/facebook/Session$3;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1191
    return-void
.end method
