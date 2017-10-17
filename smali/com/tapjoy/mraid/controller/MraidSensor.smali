.class public Lcom/tapjoy/mraid/controller/MraidSensor;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "MraidSensor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAID Sensor"


# instance fields
.field final INTERVAL:I

.field private mAccel:Lcom/tapjoy/mraid/listener/Accel;

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 2
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->INTERVAL:I

    .line 18
    iput v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastX:F

    .line 19
    iput v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastY:F

    .line 20
    iput v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastZ:F

    .line 30
    new-instance v0, Lcom/tapjoy/mraid/listener/Accel;

    invoke-direct {v0, p2, p0}, Lcom/tapjoy/mraid/listener/Accel;-><init>(Landroid/content/Context;Lcom/tapjoy/mraid/controller/MraidSensor;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    .line 31
    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 3

    .prologue
    .line 133
    const-string v0, "MRAID Sensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/listener/Accel;->getHeading()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->getHeading()F

    move-result v0

    return v0
.end method

.method public getTilt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ x : \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", y : \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", z : \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "tilt":Ljava/lang/String;
    const-string v1, "MRAID Sensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTilt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public onHeadingChange(F)V
    .locals 6
    .param p1, "f"    # F

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ heading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-double v2, p1

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "script":Ljava/lang/String;
    const-string v1, "MRAID Sensor"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onShake()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "mraid.gotShake()"

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onTilt(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 96
    iput p1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastX:F

    .line 97
    iput p2, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastY:F

    .line 98
    iput p3, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mLastZ:F

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ tilt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/MraidSensor;->getTilt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "script":Ljava/lang/String;
    const-string v1, "MRAID Sensor"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public startHeadingListener()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->startTrackingHeading()V

    .line 66
    return-void
.end method

.method public startShakeListener()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->startTrackingShake()V

    .line 45
    return-void
.end method

.method public startTiltListener()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->startTrackingTilt()V

    .line 38
    return-void
.end method

.method stop()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopAllListeners()V

    .line 143
    return-void
.end method

.method public stopHeadingListener()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopTrackingHeading()V

    .line 73
    return-void
.end method

.method public stopShakeListener()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopTrackingShake()V

    .line 59
    return-void
.end method

.method public stopTiltListener()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->mAccel:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopTrackingTilt()V

    .line 52
    return-void
.end method
