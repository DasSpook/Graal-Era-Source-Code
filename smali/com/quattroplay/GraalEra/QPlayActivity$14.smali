.class Lcom/quattroplay/GraalEra/QPlayActivity$14;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->registerPurchaseToDistimo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$fitemid:Ljava/lang/String;

.field final synthetic val$forderid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$14;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$14;->val$fitemid:Ljava/lang/String;

    iput-object p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$14;->val$forderid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$14;->val$fitemid:Ljava/lang/String;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$14;->val$forderid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/distimo/sdk/DistimoSDK;->onInAppPurchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-void
.end method
