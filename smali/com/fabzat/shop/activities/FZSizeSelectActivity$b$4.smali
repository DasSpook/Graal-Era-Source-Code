.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;
.super Ljava/lang/Object;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v0

    const-string v2, "fz_surfaceview"

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-static {v1, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;Landroid/opengl/GLSurfaceView;)V

    .line 537
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->e(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->b(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 538
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;->bt:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->e(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 540
    return-void
.end method
