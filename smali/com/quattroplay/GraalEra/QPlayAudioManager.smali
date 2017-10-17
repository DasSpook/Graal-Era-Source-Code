.class public Lcom/quattroplay/GraalEra/QPlayAudioManager;
.super Ljava/lang/Object;
.source "QPlayAudioManager.java"


# instance fields
.field private MAXSOUNDS:I

.field private SoundsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/quattroplay/GraalEra/AudioClip;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPaused:Z

.field private music:Lcom/quattroplay/GraalEra/AudioClip;

.field private musicfilename:Ljava/lang/String;

.field private musiclooping:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mPaused:Z

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musicfilename:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musiclooping:Z

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->MAXSOUNDS:I

    .line 28
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    .line 30
    return-void
.end method


# virtual methods
.method public isMusicPlaying()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public isSoundPlaying(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 141
    :goto_0
    return v1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/quattroplay/GraalEra/AudioClip;

    .line 141
    .local v0, "effect":Lcom/quattroplay/GraalEra/AudioClip;
    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->isPlaying()Z

    move-result v1

    goto :goto_0
.end method

.method public pauseMusic()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->stop()V

    .line 106
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->release()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mPaused:Z

    goto :goto_0
.end method

.method public resumeMusic()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mPaused:Z

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mPaused:Z

    .line 121
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musicfilename:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musicfilename:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musiclooping:Z

    invoke-virtual {p0, v0, v1}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->startMusic(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setMusicVolume(FF)V
    .locals 1
    .param p1, "leftvolume"    # F
    .param p2, "rightvolume"    # F

    .prologue
    .line 126
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0, p1, p2}, Lcom/quattroplay/GraalEra/AudioClip;->setVolume(FF)V

    .line 128
    :cond_0
    return-void
.end method

.method public startMusic(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loop"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 71
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mPaused:Z

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->stop()V

    .line 76
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->release()V

    .line 79
    :cond_2
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musicfilename:Ljava/lang/String;

    .line 80
    iput-boolean p2, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musiclooping:Z

    .line 82
    new-instance v0, Lcom/quattroplay/GraalEra/AudioClip;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/quattroplay/GraalEra/AudioClip;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    .line 83
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0, v2, v2}, Lcom/quattroplay/GraalEra/AudioClip;->play(FF)V

    .line 84
    if-eqz p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->loop()V

    goto :goto_0
.end method

.method public declared-synchronized startSound(Ljava/lang/String;FF)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "leftvolume"    # F
    .param p3, "rightvolume"    # F

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quattroplay/GraalEra/AudioClip;

    .line 40
    .local v1, "effect":Lcom/quattroplay/GraalEra/AudioClip;
    invoke-virtual {v1, p2, p3}, Lcom/quattroplay/GraalEra/AudioClip;->play(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v1    # "effect":Lcom/quattroplay/GraalEra/AudioClip;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 45
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    iget v5, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->MAXSOUNDS:I

    if-lt v4, v5, :cond_5

    .line 47
    const/4 v3, 0x0

    .line 49
    .local v3, "oldesteffect":Lcom/quattroplay/GraalEra/AudioClip;
    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 50
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 51
    .local v2, "itr":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quattroplay/GraalEra/AudioClip;

    .line 53
    .restart local v1    # "effect":Lcom/quattroplay/GraalEra/AudioClip;
    if-eqz v3, :cond_3

    iget-wide v4, v1, Lcom/quattroplay/GraalEra/AudioClip;->lastplaytime:J

    iget-wide v6, v3, Lcom/quattroplay/GraalEra/AudioClip;->lastplaytime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 54
    :cond_3
    move-object v3, v1

    goto :goto_1

    .line 56
    .end local v1    # "effect":Lcom/quattroplay/GraalEra/AudioClip;
    :cond_4
    if-eqz v3, :cond_5

    .line 58
    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/quattroplay/GraalEra/AudioClip;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v3}, Lcom/quattroplay/GraalEra/AudioClip;->stop()V

    .line 60
    invoke-virtual {v3}, Lcom/quattroplay/GraalEra/AudioClip;->release()V

    .line 65
    .end local v0    # "c":Ljava/util/Collection;
    .end local v2    # "itr":Ljava/util/Iterator;
    .end local v3    # "oldesteffect":Lcom/quattroplay/GraalEra/AudioClip;
    :cond_5
    new-instance v1, Lcom/quattroplay/GraalEra/AudioClip;

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p1}, Lcom/quattroplay/GraalEra/AudioClip;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .restart local v1    # "effect":Lcom/quattroplay/GraalEra/AudioClip;
    invoke-virtual {v1, p2, p3}, Lcom/quattroplay/GraalEra/AudioClip;->play(FF)V

    .line 67
    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->SoundsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public stopMusic()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->mPaused:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->musicfilename:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->stop()V

    .line 95
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/AudioClip;->release()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayAudioManager;->music:Lcom/quattroplay/GraalEra/AudioClip;

    goto :goto_0
.end method
