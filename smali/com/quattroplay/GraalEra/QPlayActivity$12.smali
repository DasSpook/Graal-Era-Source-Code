.class Lcom/quattroplay/GraalEra/QPlayActivity$12;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->connectToDistimoService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$fcontext:Landroid/content/Context;

.field final synthetic val$fsdkkey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$12;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$12;->val$fcontext:Landroid/content/Context;

    iput-object p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$12;->val$fsdkkey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$12;->val$fcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$12;->val$fsdkkey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/distimo/sdk/DistimoSDK;->onCreate(Landroid/content/Context;Ljava/lang/String;)V

    .line 1018
    return-void
.end method
