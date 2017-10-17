.class Lcom/quattroplay/GraalEra/AudioClip$1;
.super Ljava/lang/Object;
.source "AudioClip.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quattroplay/GraalEra/AudioClip;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quattroplay/GraalEra/AudioClip;


# direct methods
.method constructor <init>(Lcom/quattroplay/GraalEra/AudioClip;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/quattroplay/GraalEra/AudioClip$1;->this$0:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip$1;->this$0:Lcom/quattroplay/GraalEra/AudioClip;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/quattroplay/GraalEra/AudioClip;->access$002(Lcom/quattroplay/GraalEra/AudioClip;Z)Z

    .line 48
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip$1;->this$0:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/quattroplay/GraalEra/AudioClip;->lastplaytime:J

    .line 49
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip$1;->this$0:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/AudioClip;->access$100(Lcom/quattroplay/GraalEra/AudioClip;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 52
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip$1;->this$0:Lcom/quattroplay/GraalEra/AudioClip;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/quattroplay/GraalEra/AudioClip;->access$002(Lcom/quattroplay/GraalEra/AudioClip;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to loop sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/AudioClip$1;->this$0:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-static {v3}, Lcom/quattroplay/GraalEra/AudioClip;->access$200(Lcom/quattroplay/GraalEra/AudioClip;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
