.class Lcom/quattroplay/GraalEra/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/quattroplay/GraalEra/util/IabHelper$2;

.field final synthetic val$inv_f:Lcom/quattroplay/GraalEra/util/Inventory;

.field final synthetic val$result_f:Lcom/quattroplay/GraalEra/util/IabResult;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/util/IabHelper$2;Lcom/quattroplay/GraalEra/util/IabResult;Lcom/quattroplay/GraalEra/util/Inventory;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;->this$1:Lcom/quattroplay/GraalEra/util/IabHelper$2;

    iput-object p2, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;->val$result_f:Lcom/quattroplay/GraalEra/util/IabResult;

    iput-object p3, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;->val$inv_f:Lcom/quattroplay/GraalEra/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;->this$1:Lcom/quattroplay/GraalEra/util/IabHelper$2;

    iget-object v0, v0, Lcom/quattroplay/GraalEra/util/IabHelper$2;->val$listener:Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;->val$result_f:Lcom/quattroplay/GraalEra/util/IabResult;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/util/IabHelper$2$1;->val$inv_f:Lcom/quattroplay/GraalEra/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/quattroplay/GraalEra/util/IabResult;Lcom/quattroplay/GraalEra/util/Inventory;)V

    .line 633
    return-void
.end method
