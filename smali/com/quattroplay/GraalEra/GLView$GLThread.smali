.class Lcom/quattroplay/GraalEra/GLView$GLThread;
.super Ljava/lang/Thread;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quattroplay/GraalEra/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mContextLost:Z

.field private mDone:Z

.field private mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderer:Lcom/quattroplay/GraalEra/GLView$Renderer;

.field private mWidth:I

.field final synthetic this$0:Lcom/quattroplay/GraalEra/GLView;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/GLView;Lcom/quattroplay/GraalEra/GLView$Renderer;)V
    .locals 2
    .param p2, "renderer"    # Lcom/quattroplay/GraalEra/GLView$Renderer;

    .prologue
    const/4 v1, 0x0

    .line 343
    iput-object p1, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->this$0:Lcom/quattroplay/GraalEra/GLView;

    .line 344
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 345
    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mDone:Z

    .line 346
    iput v1, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mWidth:I

    .line 347
    iput v1, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHeight:I

    .line 348
    iput-object p2, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mRenderer:Lcom/quattroplay/GraalEra/GLView$Renderer;

    .line 349
    const-string v0, "GLThread"

    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->setName(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 527
    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 533
    :goto_0
    return-object v0

    .line 532
    :cond_0
    monitor-exit p0

    .line 533
    const/4 v0, 0x0

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private guardedRun()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 377
    new-instance v9, Lcom/quattroplay/GraalEra/GLView$EglHelper;

    iget-object v10, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->this$0:Lcom/quattroplay/GraalEra/GLView;

    invoke-direct {v9, v10}, Lcom/quattroplay/GraalEra/GLView$EglHelper;-><init>(Lcom/quattroplay/GraalEra/GLView;)V

    iput-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

    .line 382
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mRenderer:Lcom/quattroplay/GraalEra/GLView$Renderer;

    invoke-interface {v9}, Lcom/quattroplay/GraalEra/GLView$Renderer;->getConfigSpec()[I

    move-result-object v1

    .line 383
    .local v1, "configSpec":[I
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

    invoke-virtual {v9, v1}, Lcom/quattroplay/GraalEra/GLView$EglHelper;->start([I)V

    .line 385
    const/4 v2, 0x0

    .line 386
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v7, 0x1

    .line 387
    .local v7, "tellRendererSurfaceCreated":Z
    const/4 v6, 0x1

    .line 393
    .local v6, "tellRendererSurfaceChanged":Z
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mDone:Z

    if-nez v9, :cond_4

    .line 400
    const/4 v4, 0x0

    .line 401
    .local v4, "needStart":Z
    monitor-enter p0

    .line 403
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v5

    .local v5, "r":Ljava/lang/Runnable;
    if-eqz v5, :cond_1

    .line 404
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 422
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 406
    .restart local v5    # "r":Ljava/lang/Runnable;
    :cond_1
    :try_start_1
    iget-boolean v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mPaused:Z

    if-eqz v9, :cond_2

    .line 407
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

    invoke-virtual {v9}, Lcom/quattroplay/GraalEra/GLView$EglHelper;->finish()V

    .line 408
    const/4 v4, 0x1

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->needToWait()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 411
    :goto_2
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->needToWait()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 415
    :cond_3
    iget-boolean v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mDone:Z

    if-eqz v9, :cond_5

    .line 416
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v4    # "needStart":Z
    .end local v5    # "r":Ljava/lang/Runnable;
    :cond_4
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

    invoke-virtual {v9}, Lcom/quattroplay/GraalEra/GLView$EglHelper;->finish()V

    .line 451
    return-void

    .line 418
    .restart local v4    # "needStart":Z
    .restart local v5    # "r":Ljava/lang/Runnable;
    :cond_5
    :try_start_2
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->this$0:Lcom/quattroplay/GraalEra/GLView;

    invoke-static {v9}, Lcom/quattroplay/GraalEra/GLView;->access$200(Lcom/quattroplay/GraalEra/GLView;)Z

    move-result v0

    .line 419
    .local v0, "changed":Z
    iget v8, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mWidth:I

    .line 420
    .local v8, "w":I
    iget v3, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHeight:I

    .line 421
    .local v3, "h":I
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->this$0:Lcom/quattroplay/GraalEra/GLView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/quattroplay/GraalEra/GLView;->access$202(Lcom/quattroplay/GraalEra/GLView;Z)Z

    .line 422
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    if-eqz v4, :cond_6

    .line 424
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

    invoke-virtual {v9, v1}, Lcom/quattroplay/GraalEra/GLView$EglHelper;->start([I)V

    .line 425
    const/4 v7, 0x1

    .line 426
    const/4 v0, 0x1

    .line 428
    :cond_6
    if-eqz v0, :cond_7

    .line 429
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

    iget-object v10, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->this$0:Lcom/quattroplay/GraalEra/GLView;

    invoke-static {v10}, Lcom/quattroplay/GraalEra/GLView;->access$300(Lcom/quattroplay/GraalEra/GLView;)Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/quattroplay/GraalEra/GLView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 430
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v6, 0x1

    .line 432
    :cond_7
    if-eqz v7, :cond_8

    .line 433
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mRenderer:Lcom/quattroplay/GraalEra/GLView$Renderer;

    invoke-interface {v9, v2}, Lcom/quattroplay/GraalEra/GLView$Renderer;->surfaceCreated(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 434
    const/4 v7, 0x0

    .line 436
    :cond_8
    if-eqz v6, :cond_9

    .line 437
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mRenderer:Lcom/quattroplay/GraalEra/GLView$Renderer;

    invoke-interface {v9, v2, v8, v3}, Lcom/quattroplay/GraalEra/GLView$Renderer;->sizeChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 438
    const/4 v6, 0x0

    .line 440
    :cond_9
    if-lez v8, :cond_0

    if-lez v3, :cond_0

    .line 442
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mRenderer:Lcom/quattroplay/GraalEra/GLView$Renderer;

    invoke-interface {v9, v2}, Lcom/quattroplay/GraalEra/GLView$Renderer;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 443
    iget-object v9, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEglHelper:Lcom/quattroplay/GraalEra/GLView$EglHelper;

    invoke-virtual {v9}, Lcom/quattroplay/GraalEra/GLView$EglHelper;->swap()Z

    goto/16 :goto_0
.end method

.method private needToWait()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mContextLost:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mDone:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 474
    monitor-enter p0

    .line 475
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mPaused:Z

    .line 476
    monitor-exit p0

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 480
    monitor-enter p0

    .line 481
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mPaused:Z

    .line 482
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 483
    monitor-exit p0

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    iput-boolean p1, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHasFocus:Z

    .line 489
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHasFocus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 492
    :cond_0
    monitor-exit p0

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 495
    monitor-enter p0

    .line 496
    :try_start_0
    iput p1, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mWidth:I

    .line 497
    iput p2, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHeight:I

    .line 498
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->this$0:Lcom/quattroplay/GraalEra/GLView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/quattroplay/GraalEra/GLView;->access$202(Lcom/quattroplay/GraalEra/GLView;Z)Z

    .line 499
    monitor-exit p0

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 521
    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    monitor-exit p0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    .line 506
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mDone:Z

    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 508
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    :goto_0
    return-void

    .line 508
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 364
    :try_start_0
    invoke-static {}, Lcom/quattroplay/GraalEra/GLView;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :try_start_1
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->guardedRun()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    invoke-static {}, Lcom/quattroplay/GraalEra/GLView;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 374
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/quattroplay/GraalEra/GLView;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 369
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 372
    invoke-static {}, Lcom/quattroplay/GraalEra/GLView;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/quattroplay/GraalEra/GLView;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method public surfaceCreated()V
    .locals 1

    .prologue
    .line 459
    monitor-enter p0

    .line 460
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHasSurface:Z

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mContextLost:Z

    .line 462
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 463
    monitor-exit p0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 1

    .prologue
    .line 467
    monitor-enter p0

    .line 468
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView$GLThread;->mHasSurface:Z

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 470
    monitor-exit p0

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
