.class Lcom/tapjoy/mraid/view/Browser$4;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/Browser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/Browser;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/Browser;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/tapjoy/mraid/view/Browser$4;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tapjoy/mraid/view/Browser$4;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/Browser;->finish()V

    .line 193
    return-void
.end method
