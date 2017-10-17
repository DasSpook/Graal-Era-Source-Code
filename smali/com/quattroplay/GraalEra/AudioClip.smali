.class public Lcom/quattroplay/GraalEra/AudioClip;
.super Ljava/lang/Object;
.source "AudioClip.java"


# instance fields
.field public lastplaytime:J

.field private mLoop:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z

    .line 18
    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mLoop:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->lastplaytime:J

    .line 23
    iput-object p2, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

    .line 25
    const-string v0, "/assets/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 28
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 29
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    .line 30
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 31
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/quattroplay/GraalEra/AudioClip$1;

    invoke-direct {v1, p0}, Lcom/quattroplay/GraalEra/AudioClip$1;-><init>(Lcom/quattroplay/GraalEra/AudioClip;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 60
    :cond_1
    return-void

    .line 33
    :catch_0
    move-exception v7

    .line 34
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load sound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 38
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v8, "soundfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/quattroplay/GraalEra/AudioClip;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/AudioClip;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/quattroplay/GraalEra/AudioClip;)Z
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/AudioClip;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mLoop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/quattroplay/GraalEra/AudioClip;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/AudioClip;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z

    return v0
.end method

.method public declared-synchronized loop()V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mLoop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 4

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pause(2) sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized play()V
    .locals 4

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->lastplaytime:J

    .line 67
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 74
    :try_start_2
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to play sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized play(FF)V
    .locals 4
    .param p1, "leftvolume"    # F
    .param p2, "rightvolume"    # F

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->lastplaytime:J

    .line 85
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to play(2) sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    .line 141
    :cond_0
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 4

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 130
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->lastplaytime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resume sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftvolume"    # F
    .param p2, "rightvolume"    # F

    .prologue
    .line 148
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 150
    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 101
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mLoop:Z

    .line 102
    iget-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlaying:Z

    .line 104
    iget-object v1, p0, Lcom/quattroplay/GraalEra/AudioClip;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pause sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quattroplay/GraalEra/AudioClip;->name:Ljava/lang/String;

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
