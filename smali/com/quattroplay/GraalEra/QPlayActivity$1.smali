.class Lcom/quattroplay/GraalEra/QPlayActivity$1;
.super Landroid/view/OrientationEventListener;
.source "QPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/QPlayActivity;->installOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/QPlayActivity;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 268
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity$1;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity$1;->this$0:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-static {v0, p1}, Lcom/quattroplay/GraalEra/QPlayActivity;->access$002(Lcom/quattroplay/GraalEra/QPlayActivity;I)I

    .line 273
    return-void
.end method
