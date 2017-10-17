.class Lcom/quattroplay/GraalEra/QPlayActivity$15;
.super Ljava/lang/Object;
.source "QPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->showFabzatStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

.field final synthetic val$factivity:Landroid/app/Activity;

.field final synthetic val$fstoreid:Ljava/lang/String;

.field final synthetic val$fstoretoken:Ljava/lang/String;

.field final synthetic val$furl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$factivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$fstoreid:Ljava/lang/String;

    iput-object p4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$fstoretoken:Ljava/lang/String;

    iput-object p5, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$furl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1070
    :try_start_0
    new-instance v1, Lcom/fabzat/shop/FabzatShop;

    invoke-direct {v1}, Lcom/fabzat/shop/FabzatShop;-><init>()V

    .line 1071
    .local v1, "fabzatshop":Lcom/fabzat/shop/FabzatShop;
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$factivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$fstoreid:Ljava/lang/String;

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$fstoretoken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fabzat/shop/FabzatShop;->initWithStoreIdentifier(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayActivity$15;->val$furl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/FabzatShop;->setDistantResources(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v1}, Lcom/fabzat/shop/FabzatShop;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    .end local v1    # "fabzatshop":Lcom/fabzat/shop/FabzatShop;
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fabzat error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
